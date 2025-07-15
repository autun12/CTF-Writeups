// Imagine building the package properly
// This script just turns the repo into a runnable dependency
// Thank you ChatGPT
const fs = require('fs');
const path = require('path');

const rootDir = path.join(__dirname, 'expr-eval');
function deleteFolderRecursive(dir) {
  if (!fs.existsSync(dir)) return;
  fs.readdirSync(dir).forEach(f => {
    const p = path.join(dir, f);
    fs.lstatSync(p).isDirectory() ? deleteFolderRecursive(p) : fs.unlinkSync(p);
  });
  fs.rmdirSync(dir);
}
function deleteFile(f) { if (fs.existsSync(f)) fs.unlinkSync(f); }

function processFile(filePath) {
  let code = fs.readFileSync(filePath, 'utf8');
  const named = new Set();
  let hasDefault = false, defaultName = '';

  // 1) FIX export default { … }  (multiline + no-space)
  code = code.replace(
    /export\s+default\s*\{([\s\S]*?)\};?/g,
    (_, body) => {
      // extract props, flatten whitespace
      const props = body
        .split(',')
        .map(p => p.replace(/[\r\n]/g, '').trim())
        .filter(Boolean)
        .join(', ');
      return `\n\nmodule.exports = { ${props} };\n`;
    }
  );

  // 2) export default function NAME(...)
  code = code.replace(
    /export\s+default\s+function\s+([A-Za-z0-9_$]+)\s*\(/g,
    (_, n) => { hasDefault = true; defaultName = n; return `function ${n}(`; }
  );

  // 3) export default const|var NAME =
  code = code.replace(
    /export\s+default\s+(?:const|var)\s+([A-Za-z0-9_$]+)\s*=/g,
    (_, n) => { hasDefault = true; defaultName = n; return code.includes(`const ${n}`) ? `const ${n} =` : `var ${n} =`; }
  );

  // 4) export default IDENTIFIER;
  code = code.replace(
    /export\s+default\s+([A-Za-z0-9_$]+);?/g,
    (_, n) => { hasDefault = true; defaultName = n; return ''; }
  );

  // 5) named exports
  code = code.replace(
    /export\s+function\s+([A-Za-z0-9_$]+)\s*\(/g,
    (_, n) => { named.add(n); return `function ${n}(`; }
  );
  code = code.replace(
    /export\s+(?:const|var)\s+([A-Za-z0-9_$]+)\s*=/g,
    (_, n) => { named.add(n); return code.includes(`const ${n}`) ? `const ${n} =` : `var ${n} =`; }
  );
  code = code.replace(
    /export\s*\{\s*([^}]+)\s*\};?/g,
    (_, list) => { list.split(',').forEach(x => named.add(x.trim())); return ''; }
  );

  // 6) imports → require(… .js)
  code = code.replace(
    /import\s+\{\s*([^}]+)\s*\}\s+from\s+['"]([^'"]+)['"];?/g,
    (_, list, p) => {
      if (!p.endsWith('.js')) p += '.js';
      return `const { ${list.trim()} } = require('${p}');`;
    }
  );
  code = code.replace(
    /import\s+([A-Za-z0-9_$]+)\s+from\s+['"]([^'"]+)['"];?/g,
    (_, id, p) => {
      if (!p.endsWith('.js')) p += '.js';
      return `const ${id} = require('${p}');`;
    }
  );

  // 7) finally, if no module.exports yet, add one
  if (!/module\.exports/.test(code)) {
    if (hasDefault) {
      code += `\n\nmodule.exports = ${defaultName};\n`;
    } else if (named.size) {
      code += `\n\nmodule.exports = { ${Array.from(named).join(', ')} };\n`;
    }
  }

  fs.writeFileSync(filePath, code, 'utf8');
  console.log(`✅ Converted: ${filePath}`);
}

function processDir(dir) {
  fs.readdirSync(dir).forEach(f => {
    const p = path.join(dir, f);
    if (fs.lstatSync(p).isDirectory()) return processDir(p);
    if (p.endsWith('.js')) processFile(p);
  });
}

// run conversion
processDir(rootDir);

// delete dev files/folders
[
  'bower.json','package.json','parser.d.ts',
  'rollup.config.js','rollup-esm.config.js','rollup-min.config.js',".eslintrc.json",".gitignore",".travis.yml",
].map(f => deleteFile(path.join(rootDir, f)));
deleteFolderRecursive(path.join(rootDir, 'test'));

console.log('✅ All done!');
