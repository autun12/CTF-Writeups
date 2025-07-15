#!/usr/bin/env node
const readline = require("node:readline");
const { Parser } = require("./dist/index.mjs");

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
  terminal: false
});

console.log(`
███    ███  █████  ████████ ██   ██      █████  ███████      █████      ███████ ███████ ██████  ██    ██ ██  ██████ ███████ 
████  ████ ██   ██    ██    ██   ██     ██   ██ ██          ██   ██     ██      ██      ██   ██ ██    ██ ██ ██      ██      
██ ████ ██ ███████    ██    ███████     ███████ ███████     ███████     ███████ █████   ██████  ██    ██ ██ ██      █████   
██  ██  ██ ██   ██    ██    ██   ██     ██   ██      ██     ██   ██          ██ ██      ██   ██  ██  ██  ██ ██      ██      
██      ██ ██   ██    ██    ██   ██     ██   ██ ███████     ██   ██     ███████ ███████ ██   ██   ████   ██  ██████ ███████
`)                                                                                                                           

console.log("Welcome to Math as a Service!");
console.log("Enter your arithmetic expression (e.g., 1 + 2):");

rl.on("line", (line) => {
  try {
    const parser = new Parser({ allowMemberAccess: false });
    const expr   = parser.parse(line.trim());
    const result = expr.evaluate();
    console.log(result);
  } catch (err) {
    console.error("Error:", err.message);
  } finally {
    rl.close();
  }
});
