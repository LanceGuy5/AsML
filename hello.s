.global _main
.extern _printf

.section __DATA,__data          // switch to MacOS data section
message:
    .asciz "Hello, ARM64 macOS!\n"

.section __TEXT,__text          // switch to MacOS executable section
_main:
    STP x29, x30, [sp, -16]!    // Save frame pointer and link register

    ADRP x0, message@PAGE       // Load the page of the message address
    ADD x0, x0, message@PAGEOFF // Add the offset within the page

    BL _printf                  // Call printf

    LDP x29, x30, [sp], 16      // Restore frame pointer and link register
    MOV x0, 0                   // Return 0
    RET
