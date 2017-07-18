#CROSS_COMPILE=aarch64-none-elf- make PLAT=fvp all
#export PATH=$HOME/toolchains/gcc-linaro-5.3.1-2016.05-x86_64_aarch64-linux-gnu/bin:$PATH
#BL33=/home/$USER/model-work/fvp-latest-oe-uboot/fip-surgery/nt-fw.bin CROSS_COMPILE=aarch64-linux-gnu- make PLAT=fvp all fip
make ARCH=aarch64 CROSS_COMPILE=aarch64-linux-gnu- PLAT=fvp distclean
#make V=1 BL33=/home/$USER/model-work/fvp-latest-oe-uboot/fip-surgery/nt-fw.bin ARCH=aarch64 CROSS_COMPILE=aarch64-linux-gnu- PLAT=fvp all fip
make V=1 BL33=/home/$USER/git/u-boot/aemv8/u-boot.bin ARCH=aarch64 CROSS_COMPILE=aarch64-linux-gnu- PLAT=fvp all fip
if [ ! -f build/fvp/release/bl1.bin ]; then echo that didnt work for bl1.bin; fi
if [ ! -f build/fvp/release/fip.bin ]; then echo that didnt work for fip.bin; fi
