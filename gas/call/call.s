.text
.global _start
_start:
  call hello
  call hello_from_clang
  mov $0x01,%eax
  mov $0x00,%ebx
  int $0x80
