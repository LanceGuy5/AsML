.global _main
.extern _printf

.section __DATA,__data
message:
    .asciz "Hello, ARM64 macOS!\n"

.section __TEXT,__text
_main:
    stp x29, x30, [sp, -16]!    // Save frame pointer and link register

    adrp x0, message@PAGE       // Load the page of the message address
    add x0, x0, message@PAGEOFF // Add the offset within the page

    bl _printf                  // Call printf

    ldp x29, x30, [sp], 16      // Restore frame pointer and link register
    mov x0, 0                   // Return 0
    ret
