.text
.global hello
hello:
  mov $0x04,%eax
  mov $0x01,%ebx
  mov $msg,%ecx
  mov $0x0C,%edx
  int $0x80
  ret

.data
msg:.asciz "hello world\n"
