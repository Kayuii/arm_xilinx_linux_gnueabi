// Register Definition File for MEP
// ==================================
//
// JTAG Initialization buffers
//
// Refer to "MEP Support for Multi-TAP JTAG Configurations" application note
// for information on special JTAG initialization support.
//
REG = MEP_JTAG_INIT0      0x10000000 MEP_DA 4
REG = MEP_JTAG_INIT1      0x11000000 MEP_DA 4
REG = MEP_JTAG_DIMENSION  0x12000000 MEP_DA 4
REG = MEP_JTAG_RESET	  0x18000000 MEP_DA 4
REG = MEP_JTAG_UNRESET    0x19000000 MEP_DA 4
REG = MEP_JTAG_SCAN	      0x1a000000 MEP_DA 4
REG = MEP_JTAG_SCAN_TAP	  0x1b000000 MEP_DA 4  // use (MEP_JTAG_SCAN_TAP | (TAP << 4))
//
REG = MEP_ARM_JTAG_ID     0x00001000 MEP_DA 4
//
// User defined On-Stop and Idle-Mode command descriptors
// (see bin\cmd_desc.cmd)
//
REG = MEP_ON_STOP_CMD     0xD0000000 MEP_DA 4
REG = MEP_IDLE_MODE_CMD   0xD1000000 MEP_DA 4
REG = MEP_ON_GO_CMD       0xD2000000 MEP_DA 4
REG = MEP_ON_RESET_CMD    0xD3000000 MEP_DA 4
//
// MEP Internal Resources
//
REG = MEP_CAP_ENDIAN      0xC1000001 MEP_INT 1  // BE=1, LE=2
REG = MEP_DO_CPU_STATE    0xDA000640 MEP_DA 1  // RUN=0, HALT=1, SLEEP=2, DOZE=3, OFF=4, Disconnected=5
REG = MEP_DO_IJTC         0xDA000700 MEP_DA 4
REG = MEP_DO_IJTS         0xDA000710 MEP_DA 4
REG = MEP_DO_IRH          0xDA0008e0 MEP_DA 1
//
// Required for hack to override ROM table base address for iMX51EVK 
REG = CSAP1_BASE  0x000b01f8 MEP_DA 4   // CoreSight Access Port 1 Base Address Register
//
// Required for hack which provides Core debug base addresses for multicore Cortex A9 on Panda board
REG = CORE_DBG_BASE_ADR			0x1010 MEP_DA 4
//
// On some multi-core targets e.g. Freescale i.MX6Q SABRE Lite and SABRE AI, 
// accessing the debug controller regions for core 2,3,4 results in CoreSight DAP
// error when these cores are uninitialized / in reset state. This DAP error 
// prevents the probe connection and necessitates a target power cycle. 
// To prevent that, CONNECT_TO_ONLY_CORE_1 needs to be set to 1 in the TSP maj file
// for these targets. 
REG = CONNECT_TO_ONLY_CORE_1	0x1020 MEP_DA 4
//
REG = CORTEX_M_SCS_BASE_ADR		0x1030 MEP_DA 4
REG = CORTEX_M_DWT_BASE_ADR		0x1034 MEP_DA 4
REG = CORTEX_M_FPB_BASE_ADR		0x1038 MEP_DA 4

REG = CORTEX_AHB_AP_SEL_NUM		0x1040 MEP_DA 4
REG = CORTEX_APB_AP_SEL_NUM		0x1044 MEP_DA 4
REG = CORE_SIGHT_DUMP           0x1048 MEP_DA 4
// end
