@rem CyberShadow...
@echo off
echo n argon.com >cybers.dmp
echo e 0100  B0 13 CD 10 B9 3F 78 33 F6 B8 D9 FF F7 E9 03 F2 >>cybers.dmp
echo e 0110  03 CE 88 AF E8 FD D0 BF E8 FD 4B 81 FB FF 3F 75 >>cybers.dmp
echo e 0120  E8 43 68 00 A0 07 06 1F 33 FF 33 C9 88 2D 88 AD >>cybers.dmp
echo e 0130  7C 01 BE 7D 01 2B F7 88 2C 88 AC 7C 01 83 C7 03 >>cybers.dmp
echo e 0140  FE C5 80 FD 40 75 E5 33 F6 BA C8 03 B0 01 EE 42 >>cybers.dmp
echo e 0150  B9 00 03 F3 6E 0E 1F 42 B1 C8 33 FF 8A D9 02 DA >>cybers.dmp
echo e 0160  8A B7 E8 FD 32 ED 8A DE 8A 87 E8 FD 2A C1 8A E0 >>cybers.dmp
echo e 0170  02 E6 2B C1 F6 C1 01 74 02 86 E0 AB FE C3 FE C5 >>cybers.dmp
echo e 0180  80 FD A0 72 E3 FE C9 75 D3 E4 60 FE C8 75 C8 C3 >>cybers.dmp
echo rcx >>cybers.dmp
echo 90 >>cybers.dmp
echo w >>cybers.dmp
echo q >>cybers.dmp
debug <cybers.dmp >nul
argon.com
del cybers.dmp >nul
del argon.com >nul
