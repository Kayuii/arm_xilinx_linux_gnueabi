// CORTEX Register Definition File
// Contains definitions for registers and fields that are not present in Cortex-A8
//
// The "cp" macro below is a built in and takes coprocessor arguments in the
// same order as they would appear in the assembly instructions. Example
// 
//  mrc p15, op1, <rd>, CRn, CRm, op2   ->   cp(Op1, CRn, CRm, Op2)   
//

INCLUDE "cortex-a8.rd"

REG=cp15_cntrl   cp(0,1,0,0)	COPROC15 4  // Control

REG_FIELD=cp15_cntrl   te 30 30, afe 29 29, tre 28 28, nmfi 27 27, ee 25 25, ha 17 17, rr 14 14, v 13 13, i 12 12, z 11 11, sw 10 10, c 2 2, a 1 1, m 0 0

//
// <eof>
