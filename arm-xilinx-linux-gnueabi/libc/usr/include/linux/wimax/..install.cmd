cmd_/scratch/janisjo/2011.09-xilinx-linux/obj/linux-2011.09-50-arm-xilinx-linux-gnueabi-i686-pc-linux-gnu/tmp-install/include/linux/wimax/.install := perl scripts/headers_install.pl /scratch/janisjo/2011.09-xilinx-linux/obj/linux-2011.09-50-arm-xilinx-linux-gnueabi-i686-pc-linux-gnu/include/linux/wimax /scratch/janisjo/2011.09-xilinx-linux/obj/linux-2011.09-50-arm-xilinx-linux-gnueabi-i686-pc-linux-gnu/tmp-install/include/linux/wimax arm i2400m.h; perl scripts/headers_install.pl /scratch/janisjo/2011.09-xilinx-linux/obj/linux-2011.09-50-arm-xilinx-linux-gnueabi-i686-pc-linux-gnu/include/linux/wimax /scratch/janisjo/2011.09-xilinx-linux/obj/linux-2011.09-50-arm-xilinx-linux-gnueabi-i686-pc-linux-gnu/tmp-install/include/linux/wimax arm ; for F in ; do echo "\#include <asm-generic/$$F>" > /scratch/janisjo/2011.09-xilinx-linux/obj/linux-2011.09-50-arm-xilinx-linux-gnueabi-i686-pc-linux-gnu/tmp-install/include/linux/wimax/$$F; done; touch /scratch/janisjo/2011.09-xilinx-linux/obj/linux-2011.09-50-arm-xilinx-linux-gnueabi-i686-pc-linux-gnu/tmp-install/include/linux/wimax/.install
