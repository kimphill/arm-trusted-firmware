#CROSS_COMPILE=aarch64-none-elf- make PLAT=fvp all
PATH=$HOME/toolchains/gcc-linaro-5.3.1-2016.05-x86_64_aarch64-linux-gnu/bin:$PATH
BL33=/home/kimphi01/model-work/fvp-latest-oe-uboot/fip-surgery/nt-fw.bin CROSS_COMPILE=aarch64-linux-gnu- make PLAT=fvp all fip



