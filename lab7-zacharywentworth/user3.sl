#stackl V0.10.2-49-gab00cc5-dev stacklc
.source userMode.h 10
;  Source: userMode.h Line: 10
.source userMode.h 11
;  Source: userMode.h Line: 11
.source userMode.h 12
;  Source: userMode.h Line: 12
.source userMode.h 13
;  Source: userMode.h Line: 13
.source userMode.h 14
;  Source: userMode.h Line: 14
.source userMode.h 15
;  Source: userMode.h Line: 15
#once 
.source /home2/philip.howard/bin/library/machine_def.h 4
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 4
.dataseg
$BP_REG:
.data 0
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 5
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 5
.dataseg
$LP_REG:
.data 1
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 6
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 6
.dataseg
$IP_REG:
.data 2
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 7
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 7
.dataseg
$SP_REG:
.data 3
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 8
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 8
.dataseg
$FP_REG:
.data 4
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 9
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 9
.dataseg
$FLAG_REG:
.data 5
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 10
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 10
.dataseg
$IVEC_REG:
.data 6
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 13
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 13
.dataseg
$WORD_SIZE:
.data 4
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 16
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 16
.dataseg
$FL_HALTED:
.data 1
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 17
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 17
.dataseg
$FL_USER_MODE:
.data 2
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 18
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 18
.dataseg
$FL_INT_MODE:
.data 4
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 19
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 19
.dataseg
$FL_INT_DIS:
.data 8
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 20
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 20
.dataseg
$FL_VMEM:
.data 16
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 22
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 22
.dataseg
$FL_I_FIRST_INT:
.data 65536
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 23
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 23
.dataseg
$FL_I_ALL:
.data -65536
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 24
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 24
.dataseg
$FL_I_MACH:
.data 65536
.codeseg
.source /home2/philip.howard/bin/library/machine_def.h 25
;  Source: /home2/philip.howard/bin/library/machine_def.h Line: 25
.dataseg
$FL_I_TRAP:
.data 131072
.codeseg
.source user3.c 13
;  Source: user3.c Line: 13
.function main
;  main

main:
.source user3.c 14
;  Source: user3.c Line: 14
PUSH @$$LABEL_2
.dataseg
$$LABEL_2:
.string "user.slb"
.codeseg
CALL @exec
POPARGS 4
POP
.source user3.c 15
;  Source: user3.c Line: 15
PUSH @$$LABEL_3
.dataseg
$$LABEL_3:
.string "user2.slb"
.codeseg
CALL @exec
POPARGS 4
POP
.source user3.c 17
;  Source: user3.c Line: 17
$$LABEL_4:
PUSH 1
JUMPE @$$LABEL_5
JUMP @$$LABEL_4
$$LABEL_5:
.source user3.c 18
;  Source: user3.c Line: 18
PUSH 0
RETURNV
.source user3.c 20
;  Source: user3.c Line: 20
PUSH 0
RETURNV
