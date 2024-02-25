.code16
.section .text

.global _start
_start:
  mov $msg, %si
  call print
  jmp .

print:
  mov $0x0E, %ah
.loop:
  lodsb
  cmp $0x0A, %al
  je .done
  int $0x10
  jmp .loop
.done:
  ret

msg:
  .ascii "We could boot!!\n"

.fill 510 - (. - _start), 1, 0
.byte 0x55, 0xAA
