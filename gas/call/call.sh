gcc -nostdlib call.s func.s func.c -o call -no-pie
./call
rm call
