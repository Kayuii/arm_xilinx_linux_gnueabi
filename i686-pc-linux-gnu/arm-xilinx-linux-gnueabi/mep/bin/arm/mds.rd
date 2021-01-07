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
// end
