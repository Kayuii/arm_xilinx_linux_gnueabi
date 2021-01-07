// VFP Register Definition File
// Contains definitions for CP10 and CP11 registers implemented in the
// Vector Floating Point macrocell.

// VFP SP data regs: opcode1=0, CRn=regno/2, opcode2=(regno&1)<<2, CRm=0
// Have to define individual regs, can't generate a sequence because of the 
// way the register number is encoded (low bit goes in Op2:2).
// Actually, we could use a pair of sequences if we used odd/even base names
// (vfp_fe0/2/4../14, vfp_fo1/3/..15), but that seems the greater evil.

REG=vfp_f0      0x00000000 COPROC10 4  //
REG=vfp_f1      0x00000100 COPROC10 4  //
REG=vfp_f2      0x00000004 COPROC10 4  //
REG=vfp_f3      0x00000104 COPROC10 4  //
REG=vfp_f4      0x00000008 COPROC10 4  //
REG=vfp_f5      0x00000108 COPROC10 4  //
REG=vfp_f6      0x0000000C COPROC10 4  //
REG=vfp_f7      0x0000010C COPROC10 4  //
REG=vfp_f8      0x00000010 COPROC10 4  //
REG=vfp_f9      0x00000110 COPROC10 4  //
REG=vfp_f10     0x00000014 COPROC10 4  //
REG=vfp_f11     0x00000114 COPROC10 4  //
REG=vfp_f12     0x00000018 COPROC10 4  //
REG=vfp_f13     0x00000118 COPROC10 4  //
REG=vfp_f14     0x0000001c COPROC10 4  //
REG=vfp_f15     0x0000011c COPROC10 4  //
REG=vfp_f16     0x00000020 COPROC10 4  //
REG=vfp_f17     0x00000120 COPROC10 4  //
REG=vfp_f18     0x00000024 COPROC10 4  //
REG=vfp_f19     0x00000124 COPROC10 4  //
REG=vfp_f20     0x00000028 COPROC10 4  //
REG=vfp_f21     0x00000128 COPROC10 4  //
REG=vfp_f22     0x0000002C COPROC10 4  //
REG=vfp_f23     0x0000012C COPROC10 4  //
REG=vfp_f24     0x00000030 COPROC10 4  //
REG=vfp_f25     0x00000130 COPROC10 4  //
REG=vfp_f26     0x00000034 COPROC10 4  //
REG=vfp_f27     0x00000134 COPROC10 4  //
REG=vfp_f28     0x00000038 COPROC10 4  //
REG=vfp_f29     0x00000138 COPROC10 4  //
REG=vfp_f30     0x0000003c COPROC10 4  //
REG=vfp_f31     0x0000013c COPROC10 4  //

// VFP DP data regs: opcode=1, CRm=regno

REG=vfp_d       0x00000080 COPROC11 8 SEQ 0 15 8  // vfp_d0..vfp_d15

// VFP system control regs: opcode1=7, CRm=0, opcode2=0
REG=vfp_fpsid   0x0000e000 COPROC10 4  // r0           : FP System ID
REG=vfp_fpscr   0x0000e004 COPROC10 4  // r1           : FP Status and Control
REG=vfp_mvfr1   0x0000e018 COPROC10 4  // r6           : FP Exception
REG=vfp_mvfr0   0x0000e01c COPROC10 4  // r7           : FP Media and VFP 1
REG=vfp_fpexc   0x0000e020 COPROC10 4  // r8           : FP Media and VFP 0
REG=vfp_fpinst  0x0000e024 COPROC10 4  // r9           : FP Instruction
REG=vfp_fpinst2 0x0000e028 COPROC10 4  // r10          : FP Instruction2

REG_FIELD=vfp_fpsid  imp 31 24, sw 23 23, fmt 22 21, sng 20 20, arch 19 16,
                     part 15 8, var 7 4, rev 3 0

REG_FIELD=vfp_fpscr  n 31 31, z 30 30, c 29 29, v 28 28, dn 25 25, fz 24 24,
                     rmode 23 22, stride 21 20, len 18 16, ide 15 15,
                     ixe 12 12, ufe 11 11, ofe 10 10, dze 9 9, ioe 8 8,
                     idc 7 7, ixc 4 4, ufc 3 3, ofc 2 2, dzc 1 1, ioc 0 0

REG_FIELD=vfp_fpexc  exn 31 31, en 30 30, fp2v 28 28, vecitr 10 8, inv 7 7,
                     ufc 3 3, ofc 2 2, ioc 0 0

REG_FIELD=vfp_mvfr0  hwlev 31 28, svec 27 24, sqrt 23 20, div 19 16, 
                     traps 15 12, dp 11 8, sp 7 4, mrb 3 0

REG_FIELD=vfp_mvfr1  mxfp 11 8, mxi 7 4, mxls 3 0
