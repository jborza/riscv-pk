cd build
make -j 4
cp bbl bbl32.elf
/opt/riscv32i/bin/riscv32-unknown-elf-objcopy -O binary bbl32.elf bbl32.bin
/opt/riscv32i/bin/riscv32-unknown-elf-objdump -dS bbl32.elf > bbl32.s
cd ..