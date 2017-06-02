#stackl V0.10.2-49-gab00cc5-dev stacklc
#feature inp
#startup startup__
#once 
.source /home2/philip.howard/bin/library/syscodes.h 3
;  Source: /home2/philip.howard/bin/library/syscodes.h Line: 3
.dataseg
$EXIT_CALL:
.data 1
.codeseg
.source /home2/philip.howard/bin/library/syscodes.h 4
;  Source: /home2/philip.howard/bin/library/syscodes.h Line: 4
.dataseg
$PRINTI_CALL:
.data 2
.codeseg
.source /home2/philip.howard/bin/library/syscodes.h 5
;  Source: /home2/philip.howard/bin/library/syscodes.h Line: 5
.dataseg
$PRINTS_CALL:
.data 3
.codeseg
.source /home2/philip.howard/bin/library/syscodes.h 6
;  Source: /home2/philip.howard/bin/library/syscodes.h Line: 6
.dataseg
$PRINTC_CALL:
.data 4
.codeseg
.source /home2/philip.howard/bin/library/syscodes.h 7
;  Source: /home2/philip.howard/bin/library/syscodes.h Line: 7
.dataseg
$GETS_CALL:
.data 5
.codeseg
.source /home2/philip.howard/bin/library/syscodes.h 8
;  Source: /home2/philip.howard/bin/library/syscodes.h Line: 8
.dataseg
$GETL_CALL:
.data 6
.codeseg
.source /home2/philip.howard/bin/library/syscodes.h 9
;  Source: /home2/philip.howard/bin/library/syscodes.h Line: 9
.dataseg
$GETI_CALL:
.data 7
.codeseg
.source /home2/philip.howard/bin/library/syscodes.h 10
;  Source: /home2/philip.howard/bin/library/syscodes.h Line: 10
.dataseg
$EXEC_CALL:
.data 8
.codeseg
.source /home2/philip.howard/bin/library/syscodes.h 11
;  Source: /home2/philip.howard/bin/library/syscodes.h Line: 11
.dataseg
$FORK_CALL:
.data 9
.codeseg
.source /home2/philip.howard/bin/library/syscodes.h 12
;  Source: /home2/philip.howard/bin/library/syscodes.h Line: 12
.dataseg
$WAIT_CALL:
.data 10
.codeseg
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
#once 
.source /home2/philip.howard/bin/library/timer.h 5
;  Source: /home2/philip.howard/bin/library/timer.h Line: 5
.dataseg
$TIMER_CSR:
.data 201326592
.codeseg
.source /home2/philip.howard/bin/library/timer.h 6
;  Source: /home2/philip.howard/bin/library/timer.h Line: 6
.dataseg
$TIMER_COUNT:
.data 201326596
.codeseg
.source /home2/philip.howard/bin/library/timer.h 7
;  Source: /home2/philip.howard/bin/library/timer.h Line: 7
.dataseg
$TIMER_LIMIT:
.data 201326600
.codeseg
.source /home2/philip.howard/bin/library/timer.h 8
;  Source: /home2/philip.howard/bin/library/timer.h Line: 8
.dataseg
$TIMER_TIME:
.data 201326604
.codeseg
.source /home2/philip.howard/bin/library/timer.h 10
;  Source: /home2/philip.howard/bin/library/timer.h Line: 10
.dataseg
$TIMER_CSR_IE:
.data 1
.codeseg
.source /home2/philip.howard/bin/library/timer.h 11
;  Source: /home2/philip.howard/bin/library/timer.h Line: 11
.dataseg
$TIMER_CSR_INT:
.data -2147483648
.codeseg
.source /home2/philip.howard/bin/library/timer.h 13
;  Source: /home2/philip.howard/bin/library/timer.h Line: 13
.dataseg
$TIMER_VECTOR:
.data 3
.codeseg
.source /home2/philip.howard/bin/library/timer.h 15
;  Source: /home2/philip.howard/bin/library/timer.h Line: 15
.source /home2/philip.howard/bin/library/timer.h 16
;  Source: /home2/philip.howard/bin/library/timer.h Line: 16
.source /home2/philip.howard/bin/library/timer.h 19
;  Source: /home2/philip.howard/bin/library/timer.h Line: 19
.source /home2/philip.howard/bin/library/pio_term.h 1
;  Source: /home2/philip.howard/bin/library/pio_term.h Line: 1
.dataseg
$PIO_T_RDR:
.data 234881024
.codeseg
.source /home2/philip.howard/bin/library/pio_term.h 2
;  Source: /home2/philip.howard/bin/library/pio_term.h Line: 2
.dataseg
$PIO_T_XDR:
.data 234881024
.codeseg
.source /home2/philip.howard/bin/library/pio_term.h 3
;  Source: /home2/philip.howard/bin/library/pio_term.h Line: 3
.dataseg
$PIO_T_IER:
.data 234881025
.codeseg
.source /home2/philip.howard/bin/library/pio_term.h 4
;  Source: /home2/philip.howard/bin/library/pio_term.h Line: 4
.dataseg
$PIO_T_IIR:
.data 234881026
.codeseg
.source /home2/philip.howard/bin/library/pio_term.h 6
;  Source: /home2/philip.howard/bin/library/pio_term.h Line: 6
.dataseg
$PIO_T_IE_RECV:
.data 2
.codeseg
.source /home2/philip.howard/bin/library/pio_term.h 7
;  Source: /home2/philip.howard/bin/library/pio_term.h Line: 7
.dataseg
$PIO_T_IE_XMIT:
.data 4
.codeseg
.source /home2/philip.howard/bin/library/pio_term.h 8
;  Source: /home2/philip.howard/bin/library/pio_term.h Line: 8
.dataseg
$PIO_T_IID_INT:
.data 1
.codeseg
.source /home2/philip.howard/bin/library/pio_term.h 9
;  Source: /home2/philip.howard/bin/library/pio_term.h Line: 9
.dataseg
$PIO_T_IID_RECV:
.data 2
.codeseg
.source /home2/philip.howard/bin/library/pio_term.h 10
;  Source: /home2/philip.howard/bin/library/pio_term.h Line: 10
.dataseg
$PIO_T_IID_XMIT:
.data 4
.codeseg
.source /home2/philip.howard/bin/library/pio_term.h 12
;  Source: /home2/philip.howard/bin/library/pio_term.h Line: 12
.dataseg
$PIO_T_VECTOR:
.data 5
.codeseg
#once 
.source mymalloc.h 3
;  Source: mymalloc.h Line: 3
.source mymalloc.h 4
;  Source: mymalloc.h Line: 4
.source mymalloc.h 5
;  Source: mymalloc.h Line: 5
.source mymalloc.h 6
;  Source: mymalloc.h Line: 6
.source mymalloc.h 7
;  Source: mymalloc.h Line: 7
.source mymalloc.h 8
;  Source: mymalloc.h Line: 8
.source mymalloc.h 9
;  Source: mymalloc.h Line: 9
#once 
#once 
.source ioBlock.h 4
;  Source: ioBlock.h Line: 4
.source ioBlock.h 5
;  Source: ioBlock.h Line: 5
.source ioBlock.h 6
;  Source: ioBlock.h Line: 6
.source sched.h 7
;  Source: sched.h Line: 7
.source sched.h 8
;  Source: sched.h Line: 8
.source sched.h 9
;  Source: sched.h Line: 9
.source sched.h 10
;  Source: sched.h Line: 10
.source sched.h 11
;  Source: sched.h Line: 11
.source sched.h 12
;  Source: sched.h Line: 12
.source sched.h 17
;  Source: sched.h Line: 17
.source sched.h 18
;  Source: sched.h Line: 18
.source sched.h 19
;  Source: sched.h Line: 19
.source sched.h 22
;  Source: sched.h Line: 22
.source sched.h 23
;  Source: sched.h Line: 23
.source sched.h 24
;  Source: sched.h Line: 24
.source sched.h 25
;  Source: sched.h Line: 25
.source sched.h 26
;  Source: sched.h Line: 26
.source sched.h 27
;  Source: sched.h Line: 27
.source sched.h 28
;  Source: sched.h Line: 28
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
.source os.c 24
;  Source: os.c Line: 24
.dataseg
$INTERVAL_COUNT:
.data 200000
.codeseg
.source os.c 26
;  Source: os.c Line: 26
.dataseg
$OS_STACK_SIZE:
.data 1000
.codeseg
.source os.c 27
;  Source: os.c Line: 27
.dataseg
$OS_PAD:
.data 64
.codeseg
.source os.c 29
;  Source: os.c Line: 29
.source os.c 30
;  Source: os.c Line: 30
.source os.c 31
;  Source: os.c Line: 31
.source os.c 32
;  Source: os.c Line: 32
.source os.c 35
;  Source: os.c Line: 35
.dataseg
g_I_Vectors:
.block 16
.codeseg
.source os.c 37
;  Source: os.c Line: 37
.dataseg
os_isr:
.block 1
.codeseg
.source os.c 45
;  Source: os.c Line: 45
.function startup__
;  startup__

startup__:
ADJSP 24
.source os.c 47
;  Source: os.c Line: 47
.source os.c 48
;  Source: os.c Line: 48
.source os.c 49
;  Source: os.c Line: 49
.source os.c 53
;  Source: os.c Line: 53
.source os.c 53
;  Source: os.c Line: 53
PUSHREG 3
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source os.c 54
;  Source: os.c Line: 54
PUSHVAR 0
PUSH 1000
PLUS
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source os.c 55
;  Source: os.c Line: 55
.source os.c 55
;  Source: os.c Line: 55
PUSHREG 1
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source os.c 56
;  Source: os.c Line: 56
PUSHVAR 4
PUSHVAR 0
MINUS
PUSH 64
MINUS
DUP
PUSH 8
PUSHFP
PLUS
POPVARIND
POP
.source os.c 57
;  Source: os.c Line: 57
PUSHVAR 8
PUSHVAR 0
CALL @my_mem_init
ADJSP -8
.source os.c 59
;  Source: os.c Line: 59
CALL @sched_init
.source os.c 62
;  Source: os.c Line: 62
PUSH @systrap
DUP
PUSH @g_I_Vectors
PUSH 1
PUSH 4
TIMES
PLUS
POPVARIND
POP
.source os.c 63
;  Source: os.c Line: 63
PUSH @timer_isr
DUP
PUSH @g_I_Vectors
PUSH 3
PUSH 4
TIMES
PLUS
POPVARIND
POP
.source os.c 64
;  Source: os.c Line: 64
PUSH @g_I_Vectors
POPREG 6
.source os.c 67
;  Source: os.c Line: 67
PUSH 201326592
POPVAR 12
.source os.c 68
;  Source: os.c Line: 68
PUSHVAR 12
PUSHVARIND
PUSH 1
BOR
DUP
PUSHVAR 12
POPVARIND
POP
.source os.c 71
;  Source: os.c Line: 71
PUSH 201326600
POPVAR 16
.source os.c 72
;  Source: os.c Line: 72
PUSH 200000
DUP
PUSHVAR 16
POPVARIND
POP
.source os.c 74
;  Source: os.c Line: 74
PUSH @$$LABEL_2
.dataseg
$$LABEL_2:
.string "user.slb"
.codeseg
CALL @sched_exec
POPARGS 4
POP
.source os.c 75
;  Source: os.c Line: 75
PUSH @$$LABEL_3
.dataseg
$$LABEL_3:
.string "user2.slb"
.codeseg
CALL @sched_exec
POPARGS 4
POP
.source os.c 77
;  Source: os.c Line: 77
$$LABEL_4:
PUSH 1
JUMPE @$$LABEL_5
JUMP @$$LABEL_4
$$LABEL_5:
.source os.c 188
;  Source: os.c Line: 188
PUSH 0
RETURNV
.source os.c 86
;  Source: os.c Line: 86
.function my_trap_routine
;  my_trap_routine

my_trap_routine:
ADJSP 20
.source os.c 88
;  Source: os.c Line: 88
.source os.c 89
;  Source: os.c Line: 89
.source os.c 89
;  Source: os.c Line: 89
PUSHREG 0
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source os.c 90
;  Source: os.c Line: 90
PUSHVAR -12
POPVAR 4
.source os.c 91
;  Source: os.c Line: 91
.source os.c 92
;  Source: os.c Line: 92
.source os.c 94
;  Source: os.c Line: 94
PUSHVAR -12
DUP
PUSH 12
PUSHFP
PLUS
POPVARIND
POP
.source os.c 95
;  Source: os.c Line: 95
PUSHVAR 12
PUSHVAR 0
PUSH 1
TIMES
PLUS
DUP
PUSH 12
PUSHFP
PLUS
POPVARIND
POP
.source os.c 96
;  Source: os.c Line: 96
PUSHVAR 12
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
.source os.c 98
;  Source: os.c Line: 98
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
DUP
PUSH 8
PUSHFP
PLUS
POPVARIND
POP
.source os.c 99
;  Source: os.c Line: 99
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
DUP
PUSH 12
PUSHFP
PLUS
POPVARIND
POP
.source os.c 100
;  Source: os.c Line: 100
PUSHVAR 12
PUSHVAR 0
PUSH 1
TIMES
PLUS
DUP
PUSH 12
PUSHFP
PLUS
POPVARIND
POP
.source os.c 101
;  Source: os.c Line: 101
PUSHVAR 12
DUP
PUSHVAR -12
PUSH 4
PLUS
POPVARIND
POP
.source os.c 112
;  Source: os.c Line: 112
.source os.c 104
;  Source: os.c Line: 104
PUSHVAR -12
CALL @validate_args
POPARGS 4
PUSH 0
NE
JUMPE @$$LABEL_6
.source os.c 105
;  Source: os.c Line: 105
PUSH 1
NEG
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
.source os.c 106
;  Source: os.c Line: 106
PUSHVAR 8
DUP
PUSHVAR -12
PUSH 4
PLUS
POPVARIND
POP
.source os.c 107
;  Source: os.c Line: 107
PUSHVAR 4
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
.source os.c 108
;  Source: os.c Line: 108
RETURN
$$LABEL_6:
.source os.c 135
;  Source: os.c Line: 135
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 3
EQ
JUMPE @$$LABEL_7
.source os.c 113
;  Source: os.c Line: 113
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
OUTS
.source os.c 114
;  Source: os.c Line: 114
PUSH 0
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
JUMP @$$LABEL_8
$$LABEL_7:
.source os.c 135
;  Source: os.c Line: 135
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 7
EQ
JUMPE @$$LABEL_9
.source os.c 117
;  Source: os.c Line: 117
PUSHVAR -12
INP
.source os.c 118
;  Source: os.c Line: 118
PUSH 0
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
JUMP @$$LABEL_10
$$LABEL_9:
.source os.c 135
;  Source: os.c Line: 135
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 6
EQ
JUMPE @$$LABEL_11
.source os.c 121
;  Source: os.c Line: 121
PUSHVAR -12
INP
.source os.c 122
;  Source: os.c Line: 122
PUSH 0
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
JUMP @$$LABEL_12
$$LABEL_11:
.source os.c 135
;  Source: os.c Line: 135
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 8
EQ
JUMPE @$$LABEL_13
.source os.c 125
;  Source: os.c Line: 125
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
CALL @sched_exec
POPARGS 4
POP
.source os.c 126
;  Source: os.c Line: 126
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 134217728
BOR
DUP
PUSHVAR -12
PUSH 0
PLUS
POPVARIND
POP
.source os.c 127
;  Source: os.c Line: 127
PUSH 0
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
JUMP @$$LABEL_14
$$LABEL_13:
.source os.c 135
;  Source: os.c Line: 135
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 1
EQ
JUMPE @$$LABEL_15
.source os.c 130
;  Source: os.c Line: 130
PUSH @os_isr
PUSHVARIND
CALL @sched_exit
ADJSP -4
.source os.c 131
;  Source: os.c Line: 131
PUSH 0
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
JUMP @$$LABEL_16
$$LABEL_15:
.source os.c 134
;  Source: os.c Line: 134
PUSH 1
NEG
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
$$LABEL_16:
$$LABEL_14:
$$LABEL_12:
$$LABEL_10:
$$LABEL_8:
.source os.c 137
;  Source: os.c Line: 137
PUSHVAR 4
DUP
PUSH -12
PUSHFP
PLUS
POPVARIND
POP
RETURN
.source os.c 146
;  Source: os.c Line: 146
.function systrap
;  systrap

systrap:
.source os.c 147
;  Source: os.c Line: 147
.source os.c 147
;  Source: os.c Line: 147
PUSHREG 3
DUP
PUSH @os_isr
POPVARIND
POP
.source os.c 148
;  Source: os.c Line: 148
PUSH @os_isr
PUSHVARIND
PUSH @os_isr
PUSHVARIND
PUSH 1
PUSH 24
TIMES
MINUS
PUSH @os_isr
POPVARIND
POP
.source os.c 150
;  Source: os.c Line: 150
PUSHVAR -12
CALL @my_trap_routine
ADJSP -4
.source os.c 151
;  Source: os.c Line: 151
RTI
RETURN
.source os.c 160
;  Source: os.c Line: 160
.function validate_args
;  validate_args

validate_args:
.source os.c 162
;  Source: os.c Line: 162
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 1
EQ
JUMPE @$$LABEL_17
.source os.c 161
;  Source: os.c Line: 161
PUSH 0
RETURNV
$$LABEL_17:
.source os.c 163
;  Source: os.c Line: 163
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 3
EQ
JUMPE @$$LABEL_18
.source os.c 162
;  Source: os.c Line: 162
.source os.c 162
;  Source: os.c Line: 162
PUSHVAR -12
CALL @check_limits
POPARGS 4
RETURNV
$$LABEL_18:
.source os.c 164
;  Source: os.c Line: 164
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 7
EQ
JUMPE @$$LABEL_19
.source os.c 163
;  Source: os.c Line: 163
.source os.c 163
;  Source: os.c Line: 163
PUSHVAR -12
CALL @check_limits
POPARGS 4
RETURNV
$$LABEL_19:
.source os.c 165
;  Source: os.c Line: 165
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 8
EQ
JUMPE @$$LABEL_20
.source os.c 164
;  Source: os.c Line: 164
.source os.c 164
;  Source: os.c Line: 164
PUSHVAR -12
CALL @check_limits
POPARGS 4
RETURNV
$$LABEL_20:
.source os.c 167
;  Source: os.c Line: 167
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 6
EQ
JUMPE @$$LABEL_21
.source os.c 165
;  Source: os.c Line: 165
.source os.c 165
;  Source: os.c Line: 165
PUSHVAR -12
CALL @check_limits
POPARGS 4
RETURNV
$$LABEL_21:
.source os.c 167
;  Source: os.c Line: 167
PUSH 1
NEG
RETURNV
.source os.c 188
;  Source: os.c Line: 188
PUSH 0
RETURNV
.source os.c 176
;  Source: os.c Line: 176
.function check_limits
;  check_limits

check_limits:
ADJSP 12
.source os.c 178
;  Source: os.c Line: 178
.source os.c 179
;  Source: os.c Line: 179
.source os.c 179
;  Source: os.c Line: 179
PUSHREG 1
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source os.c 180
;  Source: os.c Line: 180
.source os.c 181
;  Source: os.c Line: 181
.source os.c 181
;  Source: os.c Line: 181
PUSHREG 0
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source os.c 186
;  Source: os.c Line: 186
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 4
GT
DUP
JUMPE @$$LABEL_23
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 0
LT
AND
$$LABEL_23:
JUMPE @$$LABEL_22
.source os.c 184
;  Source: os.c Line: 184
PUSH 0
RETURNV
$$LABEL_22:
.source os.c 186
;  Source: os.c Line: 186
PUSH 1
NEG
RETURNV
.source os.c 188
;  Source: os.c Line: 188
PUSH 0
RETURNV
