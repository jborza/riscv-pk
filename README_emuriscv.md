## build instructions to work with `emuriscv`:

from `build` directory run:

    ../configure --prefix=$RISCV --host=riscv32-unknown-elf --with-arch=rv32i
    $RISCV/bin/riscv32-unknown-elf-objcopy -O binary bbl bbl32.bin

optional useful options:
   
    --enable-print-device-tree --enable-boot-machine --enable-logo --disable-vm

to get source listing:
    
    /opt/riscv32i/bin/riscv32-unknown-elf-objdump -dS bbl > bbl32.s

note: to embed debug information to the build for easier interpretation of the sources
 
add `CFLAGS='-g -O0'` to the `configure` or `make` line
