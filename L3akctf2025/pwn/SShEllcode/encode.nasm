global _start

section .data
	align 16
	v1:	dd 1.1, 2.2, 3.3, 4.4	; Four Single precision floats 32 bits each
	v1dp:	dq 1.1, 2.2		; Two Double precision floats 64 bits each
	v2:	dd 5.5, 6.6, 7.7, 8.8
	v2s1:	dd 5.5, 6.6, 7.7, -8.8
	v2s2:	dd 5.5, 6.6, -7.7, -8.8
	v2s3:	dd 5.5, -6.6, -7.7, -8.8
	v2s4:	dd -5.5, -6.6, -7.7, -8.8
	num1:	dd 1.2
	v3:	dd 1.2, 2.3, 4.5, 6.7	; No longer 16 byte aligned
	v3dp:	dq 1.2, 2.3		; No longer 16 byte aligned

section .bss
	mask1:	resd 1
	mask2:	resd 1
	mask3:	resd 1
	mask4:	resd 1

section .text
	_start:

;
;	op	dst,  src
;
				;
				; SSE
				;
				; Using movaps since vectors are 16 byte aligned
	movaps	xmm0, [v1]	; Move four 32-bit(single precision) floats to xmm0 
	movaps	xmm1, [v2]
	movups	xmm2, [v3]	; Need to use movups since v3 is not 16 byte aligned
	;movaps	xmm3, [v3]	; This would seg fault if uncommented 
	movss	xmm3, [num1]	; Move 32-bit float num1 to the least significant element of xmm3
	movss	xmm3, [v3]	; Move first 32-bit float of v3 to the least significant element of xmm3
	movaps	xmm6, [v2s1]

; global _start

; section .data
;     v1: dd 1.1, 2.2, 3.3, 4.4    ;first set of 4 numbers
;     v2: dd 5.5, 6.6, 7.7, 8.8    ;second set
    
; section .bss
;     v3: resd 4    ;result
    
; section .text
;     _start:
    
;     movups xmm0, [v1]   ;load v1 into xmm0
;     movups xmm1, [v2]   ;load v2 into xmm1
    
;     addps xmm0, xmm1    ;add the 4 numbers in xmm1 (from v2) to the 4 numbers in xmm0 (from v1), store in xmm0. for the first float the result will be 5.5+1.1=6.6
;     mulps xmm0, xmm1    ;multiply the four numbers in xmm1 (from v2, unchanged) with the results from the previous calculation (in xmm0), store in xmm0. for the first float the result will be 5.5*6.6=36.3
;     subps xmm0, xmm1    ;subtract the four numbers in v2 (in xmm1, still unchanged) from result from previous calculation (in xmm1). for the first float, the result will be 36.3-5.5=30.8
    
;     movups [v3], xmm0   ;store v1 in v3
    
;     ;end program
;     ret

; ; global _start

; ; section .text

; ; _start:
; ;     jmp calldecoder

; ; decode:
; ;     pop r9                          ; create data pointer
; ;     pxor xmm0, xmm0                    ; set counter
; ;     add cl, [r9]                    ; set counter
; ;     inc r9                          ; point to first dqword
; ;     movdqu xmm2, [r9]               ; load xmm2 with value to subtract from 2 qword packs in data
; ;     add r9, 16                      ; point to next dqword
; ;     mov r11, r9                     ; save pointer to the start of the shellcode

; ; loop:
; ;     movdqu xmm1, [r9]               ; load dqword
; ;     paddq xmm1, xmm2                ; add xmm1 and xmm2, save to xmm1
; ;     movdqu [r9], xmm1               ; overwrite dqword in data
; ;     add r9, 16                      ; point to next dqword
; ;     dec rcx                         ; decrement loop counter
; ;     jnz loop                        ; repeat till rcx > 0
; ;     jmp r11                         ; execute decoded shellcode

; ; calldecoder:

; ;     call decode
; ;     data: db 0x02,0x73,0xb7,0xd9,0x76,0x82,0x14,0x3c,0x03,0x73,0x62,0xdd,0x96,0x24,0x6d,0x41,0x02,0xd5,0x79,0xe6,0xd9,0xc5,0xa6,0xf3,0x5e,0xf6,0x0b,0x52,0x98,0x4e,0xfb,0x11,0x46,0x16,0x30,0x77,0xd1,0x06,0xce,0x1b,0x45,0x16,0x84,0x6b,0xec,0x9b,0xce,0xcd,0x02