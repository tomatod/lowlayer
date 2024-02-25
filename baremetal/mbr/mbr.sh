as -o mbr.o mbr.s
ld -Ttext=0x7c00 --oformat=binary -o mbr.bin mbr.o
qemu-system-x86_64 -drive file=mbr.bin,format=raw
rm mbr.o mbr.bin
