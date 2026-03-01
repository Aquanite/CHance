// ChanceCode macOS ARM64 backend output
.build_version macos, 15, 0

.extern _printf
.extern _exit

.section __TEXT,__text,regular,pure_instructions

.globl __cert__runtime_error_ex
.p2align 2
__cert__runtime_error_ex:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x27, x28, [sp, #-16]!
    sub sp, sp, #112
    mov x27, sp
    str w0, [x27, #0]
    str x1, [x27, #8]
    str x2, [x27, #16]
    str x3, [x27, #24]
    str x4, [x27, #32]
    str x5, [x27, #40]
    adrp x0, ___cert__runtime_error_ex____str0@PAGE
    add x0, x0, ___cert__runtime_error_ex____str0@PAGEOFF
    mov x15, sp
    bl _printf
    str w0, [x27, #48]
    adrp x0, ___cert__runtime_error_ex____str1@PAGE
    add x0, x0, ___cert__runtime_error_ex____str1@PAGEOFF
    ldr w1, [x27, #0]
    sub sp, sp, #16
    ldr w9, [x27, #0]
    sxtw x9, w9
    str x9, [sp, #0]
    mov x15, sp
    bl _printf
    add sp, sp, #16
    str w0, [x27, #48]
    adrp x0, ___cert__runtime_error_ex____str2@PAGE
    add x0, x0, ___cert__runtime_error_ex____str2@PAGEOFF
    ldr x1, [x27, #8]
    sub sp, sp, #16
    ldr x9, [x27, #8]
    str x9, [sp, #0]
    mov x15, sp
    bl _printf
    add sp, sp, #16
    str w0, [x27, #48]
    adrp x0, ___cert__runtime_error_ex____str3@PAGE
    add x0, x0, ___cert__runtime_error_ex____str3@PAGEOFF
    ldr x1, [x27, #16]
    sub sp, sp, #16
    ldr x9, [x27, #16]
    str x9, [sp, #0]
    mov x15, sp
    bl _printf
    add sp, sp, #16
    str w0, [x27, #48]
    ldr x9, [x27, #24]
    mov x10, xzr
    cmp x9, x10
    cset w11, ne
    strb w11, [x27, #48]
    ldrb w9, [x27, #48]
    mov w10, wzr
    cmp w9, w10
    cset w11, ne
    strb w11, [x27, #48]
    ldrb w9, [x27, #48]
    cmp w9, wzr
    b.ne Lcc_label_f0_0
    b Lcc_label_f0_1
Lcc_label_f0_0:
    adrp x0, ___cert__runtime_error_ex____str4@PAGE
    add x0, x0, ___cert__runtime_error_ex____str4@PAGEOFF
    ldr x1, [x27, #24]
    ldr x2, [x27, #32]
    sub sp, sp, #16
    ldr x9, [x27, #24]
    str x9, [sp, #0]
    ldr x9, [x27, #32]
    str x9, [sp, #8]
    mov x15, sp
    bl _printf
    add sp, sp, #16
    str w0, [x27, #48]
Lcc_label_f0_1:
    ldr x9, [x27, #40]
    mov x10, xzr
    cmp x9, x10
    cset w11, ne
    strb w11, [x27, #48]
    ldrb w9, [x27, #48]
    mov w10, wzr
    cmp w9, w10
    cset w11, ne
    strb w11, [x27, #48]
    ldrb w9, [x27, #48]
    cmp w9, wzr
    b.ne Lcc_label_f0_2
    b Lcc_label_f0_3
Lcc_label_f0_2:
    adrp x0, ___cert__runtime_error_ex____str5@PAGE
    add x0, x0, ___cert__runtime_error_ex____str5@PAGEOFF
    ldr x1, [x27, #40]
    sub sp, sp, #16
    ldr x9, [x27, #40]
    str x9, [sp, #0]
    mov x15, sp
    bl _printf
    add sp, sp, #16
    str w0, [x27, #48]
Lcc_label_f0_3:
    adrp x0, ___cert__runtime_error_ex____str6@PAGE
    add x0, x0, ___cert__runtime_error_ex____str6@PAGEOFF
    mov x15, sp
    bl _printf
    str w0, [x27, #48]
    movz w0, #0x1
    bl _exit
    mov sp, x27
    add sp, sp, #112
    ldp x27, x28, [sp], #16
    ldp x29, x30, [sp], #16
    ret

.globl __cert__runtime_error
.p2align 2
__cert__runtime_error:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x27, x28, [sp, #-16]!
    sub sp, sp, #64
    mov x27, sp
    str x0, [x27, #0]
    str x1, [x27, #8]
    movz w0, #0x1
    ldr x1, [x27, #0]
    ldr x2, [x27, #8]
    mov x3, xzr
    mov x4, xzr
    mov x5, xzr
    bl __cert__runtime_error_ex
    mov sp, x27
    add sp, sp, #64
    ldp x27, x28, [sp], #16
    ldp x29, x30, [sp], #16
    ret

.globl __cert__panic
.p2align 2
__cert__panic:
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    stp x27, x28, [sp, #-16]!
    sub sp, sp, #64
    mov x27, sp
    str x0, [x27, #0]
    movz w0, #0x3e8
    adrp x1, ___cert__panic____str7@PAGE
    add x1, x1, ___cert__panic____str7@PAGEOFF
    ldr x2, [x27, #0]
    mov x3, xzr
    mov x4, xzr
    mov x5, xzr
    bl __cert__runtime_error_ex
    mov sp, x27
    add sp, sp, #64
    ldp x27, x28, [sp], #16
    ldp x29, x30, [sp], #16
    ret


.section __TEXT,__cstring
___cert__runtime_error_ex____str0:
    .byte 0x0a, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x20, 0x43, 0x48, 0x41, 0x4e, 0x43, 0x45, 0x20, 0x52, 0x55, 0x4e, 0x54, 0x49, 0x4d, 0x45, 0x20, 0x45, 0x52, 0x52, 0x4f, 0x52, 0x20, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x0a, 0x00
___cert__runtime_error_ex____str1:
    .byte 0x43, 0x6f, 0x64, 0x65, 0x3a, 0x20, 0x30, 0x78, 0x25, 0x58, 0x0a, 0x00
___cert__runtime_error_ex____str2:
    .byte 0x43, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x3a, 0x20, 0x25, 0x73, 0x0a, 0x00
___cert__runtime_error_ex____str3:
    .byte 0x4d, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x3a, 0x20, 0x25, 0x73, 0x0a, 0x00
___cert__runtime_error_ex____str4:
    .byte 0x4c, 0x6f, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e, 0x3a, 0x20, 0x25, 0x73, 0x3a, 0x25, 0x64, 0x0a, 0x00
___cert__runtime_error_ex____str5:
    .byte 0x53, 0x79, 0x6d, 0x62, 0x6f, 0x6c, 0x3a, 0x20, 0x25, 0x73, 0x0a, 0x00
___cert__runtime_error_ex____str6:
    .byte 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x3d, 0x0a, 0x00
___cert__panic____str7:
    .byte 0x50, 0x61, 0x6e, 0x69, 0x63, 0x00
