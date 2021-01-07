//___________________________________________________________________
//
//               Copyright (c) 2012 Mentor Graphics Corporation
//                           All rights reserved
//
//   THIS WORK CONTAINS TRADE SECRETS AND PROPRIETARY INFORMATION WHICH IS
//    THE PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS LICENSORS AND IS
//                        SUBJECT TO LICENSE TERMS.
//
//___________________________________________________________________
//
//   MON/MDI Register Definition File for the CDD (co-debug demo)
//   registers, allowing them to be accessed and viewed by name
//   from the MON command line and script files.
//
//   Make sure to update the offset fields for the two registers
//   to match the Veloce-DUT design.
//___________________________________________________________________
//
//    Reg Name    Address     Space   Size
//    ========    ==========  ======  ====
//
REG = CDD_CTL     0x40000000  MEMORY   4
REG = CDD_SAMPLE  0x40000004  MEMORY   4
REG = CDD_RESULT  0x40000008  MEMORY   4

REG_FIELD = CDD_CTL reset 31 31, full 1 1, empty 0 0
