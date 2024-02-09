Run on linux with intel x86-64 arch.

```
sudo apt install gcc
as asm1.s -o asm.o
gcc -o asm asm.o -nostdlib -no-pie
./asm
```

Change `asm1.s` to any other file to compile any of the three codes.
