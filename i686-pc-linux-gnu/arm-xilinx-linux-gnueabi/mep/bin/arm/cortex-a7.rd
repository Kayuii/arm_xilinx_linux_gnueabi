INCLUDE "cortex-a8.rd"
REG=cp15_l2ectlr   cp(1,9,0,3)	COPROC15 4  // L2 Extended Control Register

REG_FIELD=cp15_l2ectlr   l2_int_async_err 30 30, axi_async_err 29 29
