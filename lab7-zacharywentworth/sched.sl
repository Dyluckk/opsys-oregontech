#stackl V0.10.2-49-gab00cc5-dev stacklc
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
#library <string.sl>
.source /home2/philip.howard/bin/library/string.h 4
;  Source: /home2/philip.howard/bin/library/string.h Line: 4
.source /home2/philip.howard/bin/library/string.h 5
;  Source: /home2/philip.howard/bin/library/string.h Line: 5
.source /home2/philip.howard/bin/library/string.h 6
;  Source: /home2/philip.howard/bin/library/string.h Line: 6
.source /home2/philip.howard/bin/library/string.h 7
;  Source: /home2/philip.howard/bin/library/string.h Line: 7
.source /home2/philip.howard/bin/library/string.h 8
;  Source: /home2/philip.howard/bin/library/string.h Line: 8
.source /home2/philip.howard/bin/library/string.h 9
;  Source: /home2/philip.howard/bin/library/string.h Line: 9
.source /home2/philip.howard/bin/library/string.h 10
;  Source: /home2/philip.howard/bin/library/string.h Line: 10
.source /home2/philip.howard/bin/library/string.h 11
;  Source: /home2/philip.howard/bin/library/string.h Line: 11
.source /home2/philip.howard/bin/library/string.h 12
;  Source: /home2/philip.howard/bin/library/string.h Line: 12
.source /home2/philip.howard/bin/library/string.h 13
;  Source: /home2/philip.howard/bin/library/string.h Line: 13
.source /home2/philip.howard/bin/library/string.h 14
;  Source: /home2/philip.howard/bin/library/string.h Line: 14
#once 
.source queue.h 31
;  Source: queue.h Line: 31
.source queue.h 41
;  Source: queue.h Line: 41
.source queue.h 49
;  Source: queue.h Line: 49
.source queue.h 58
;  Source: queue.h Line: 58
.source queue.h 64
;  Source: queue.h Line: 64
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
.source sched.c 9
;  Source: sched.c Line: 9
.dataseg
$READY:
.data 2
.codeseg
.source sched.c 10
;  Source: sched.c Line: 10
.dataseg
$BUSY:
.data 1
.codeseg
.source sched.c 11
;  Source: sched.c Line: 11
.dataseg
$FREE:
.data 0
.codeseg
.source sched.c 13
;  Source: sched.c Line: 13
.dataseg
$SIZE:
.data 10
.codeseg
.source sched.c 14
;  Source: sched.c Line: 14
.dataseg
$NULL:
.data 0
.codeseg
.source sched.c 16
;  Source: sched.c Line: 16
.dataseg
$g_pcb:
.block 1
.codeseg
.source sched.c 17
;  Source: sched.c Line: 17
.dataseg
$os_pcb:
.block 8
.codeseg
.source sched.c 18
;  Source: sched.c Line: 18
.dataseg
$processes:
.block 1
.codeseg
.source sched.c 20
;  Source: sched.c Line: 20
.dataseg
g_isr:
.block 1
.codeseg
.source sched.c 28
;  Source: sched.c Line: 28
.function sched_init
;  sched_init

sched_init:
.source sched.c 29
;  Source: sched.c Line: 29
.source sched.c 29
;  Source: sched.c Line: 29
PUSH 10
CALL @Q_Init
POPARGS 4
DUP
PUSH @$processes
POPVARIND
POP
.source sched.c 31
;  Source: sched.c Line: 31
PUSH 1
DUP
PUSH @$os_pcb
PUSH 24
PLUS
POPVARIND
POP
.source sched.c 32
;  Source: sched.c Line: 32
PUSH 0
DUP
PUSH @$os_pcb
PUSH 28
PLUS
POPVARIND
POP
.source sched.c 34
;  Source: sched.c Line: 34
PUSH @$os_pcb
DUP
PUSH @$g_pcb
POPVARIND
POP
RETURN
.source sched.c 43
;  Source: sched.c Line: 43
.function $find_open_slot
;  $find_open_slot

$find_open_slot:
ADJSP 8
.source sched.c 44
;  Source: sched.c Line: 44
.source sched.c 46
;  Source: sched.c Line: 46
.source sched.c 46
;  Source: sched.c Line: 46
PUSH 32
CALL @my_malloc
POPARGS 4
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source sched.c 49
;  Source: sched.c Line: 49
PUSHVAR 0
PUSH 0
EQ
JUMPE @$$LABEL_2
.source sched.c 47
;  Source: sched.c Line: 47
PUSH 0
RETURNV
$$LABEL_2:
.source sched.c 49
;  Source: sched.c Line: 49
PUSHVAR 0
RETURNV
.source sched.c 158
;  Source: sched.c Line: 158
PUSH 0
RETURNV
.source sched.c 58
;  Source: sched.c Line: 58
.function sched_exec
;  sched_exec

sched_exec:
ADJSP 24
.source sched.c 60
;  Source: sched.c Line: 60
.source sched.c 62
;  Source: sched.c Line: 62
.source sched.c 63
;  Source: sched.c Line: 63
.source sched.c 64
;  Source: sched.c Line: 64
.source sched.c 64
;  Source: sched.c Line: 64
CALL @$find_open_slot
DUP
PUSH 16
PUSHFP
PLUS
POPVARIND
POP
.source sched.c 69
;  Source: sched.c Line: 69
PUSHVAR 16
PUSH 0
EQ
JUMPE @$$LABEL_3
.source sched.c 67
;  Source: sched.c Line: 67
PUSH 1
NEG
RETURNV
$$LABEL_3:
.source sched.c 69
;  Source: sched.c Line: 69
.source sched.c 69
;  Source: sched.c Line: 69
PUSH 12
PUSHFP
PLUS
CALL @my_get_largest
POPARGS 4
DUP
PUSHVAR 16
PUSH 0
PLUS
PUSH 8
PLUS
POPVARIND
POP
.source sched.c 72
;  Source: sched.c Line: 72
PUSHVAR 16
PUSH 0
PLUS
PUSH 8
PLUS
PUSHVARIND
PUSH 0
EQ
JUMPE @$$LABEL_4
.source sched.c 70
;  Source: sched.c Line: 70
PUSH 1
NEG
RETURNV
$$LABEL_4:
.source sched.c 72
;  Source: sched.c Line: 72
PUSHVAR 16
PUSH 0
PLUS
PUSH 8
PLUS
PUSHVARIND
PUSHVAR 12
PLUS
DUP
PUSHVAR 16
PUSH 0
PLUS
PUSH 12
PLUS
POPVARIND
POP
.source sched.c 73
;  Source: sched.c Line: 73
PUSHVAR 16
PUSH 0
PLUS
PUSH 8
PLUS
PUSHVARIND
POPREG 0
.source sched.c 74
;  Source: sched.c Line: 74
PUSHVAR 16
PUSH 0
PLUS
PUSH 12
PLUS
PUSHVARIND
POPREG 1
.source sched.c 77
;  Source: sched.c Line: 77
PUSH 8
DUP
PUSH 0
PUSHFP
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source sched.c 78
;  Source: sched.c Line: 78
PUSHVAR -12
DUP
PUSH 0
PUSHFP
PLUS
PUSH 4
PLUS
POPVARIND
POP
.source sched.c 79
;  Source: sched.c Line: 79
PUSH 0
DUP
PUSH 0
PUSHFP
PLUS
PUSH 8
PLUS
POPVARIND
POP
.source sched.c 80
;  Source: sched.c Line: 80
PUSH 0
PUSHFP
PLUS
INP
.source sched.c 83
;  Source: sched.c Line: 83
$$LABEL_5:
PUSH 0
PUSHFP
PLUS
PUSH 0
PLUS
PUSHVARIND
PUSH 0
GE
JUMPE @$$LABEL_6
JUMP @$$LABEL_5
$$LABEL_6:
.source sched.c 87
;  Source: sched.c Line: 87
.source sched.c 85
;  Source: sched.c Line: 85
PUSHVAR 16
PUSH @$processes
PUSHVARIND
CALL @Q_Enqueue
POPARGS 8
PUSH 0
NE
JUMPE @$$LABEL_7
.source sched.c 85
;  Source: sched.c Line: 85
PUSH 1
NEG
RETURNV
$$LABEL_7:
.source sched.c 87
;  Source: sched.c Line: 87
PUSH 0
PUSHFP
PLUS
PUSH 8
PLUS
PUSHVARIND
PUSHVAR 16
PUSH 0
PLUS
PUSH 8
PLUS
PUSHVARIND
MINUS
DUP
PUSHVAR 16
PUSH 0
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source sched.c 88
;  Source: sched.c Line: 88
PUSH 0
PUSHFP
PLUS
PUSH 8
PLUS
PUSHVARIND
PUSHVAR 16
PUSH 0
PLUS
PUSH 8
PLUS
PUSHVARIND
MINUS
DUP
PUSHVAR 16
PUSH 0
PLUS
PUSH 20
PLUS
POPVARIND
POP
.source sched.c 89
;  Source: sched.c Line: 89
PUSH 0
PUSHFP
PLUS
PUSH 8
PLUS
PUSHVARIND
PUSH 0
PUSHFP
PLUS
PUSH 8
PLUS
PUSHVARIND
PUSHVARIND
PLUS
DUP
PUSHVAR 16
PUSH 0
PLUS
PUSH 12
PLUS
POPVARIND
POP
.source sched.c 90
;  Source: sched.c Line: 90
PUSH 8
DUP
PUSHVAR 16
PUSH 0
PLUS
PUSH 16
PLUS
POPVARIND
POP
.source sched.c 91
;  Source: sched.c Line: 91
PUSH 2
DUP
PUSHVAR 16
PUSH 0
PLUS
PUSH 4
PLUS
POPVARIND
POP
.source sched.c 93
;  Source: sched.c Line: 93
PUSH 2
DUP
PUSHVAR 16
PUSH 24
PLUS
POPVARIND
POP
.source sched.c 94
;  Source: sched.c Line: 94
PUSH 0
DUP
PUSHVAR 16
PUSH 28
PLUS
POPVARIND
POP
.source sched.c 96
;  Source: sched.c Line: 96
PUSHVAR 16
PUSH 0
PLUS
PUSH 12
PLUS
PUSHVARIND
POPREG 1
.source sched.c 97
;  Source: sched.c Line: 97
PUSHVAR 16
PUSH 0
PLUS
PUSH 12
PLUS
PUSHVARIND
PUSHVAR 16
PUSH 0
PLUS
PUSH 8
PLUS
PUSHVARIND
CALL @my_set_limit
POPARGS 8
POP
.source sched.c 158
;  Source: sched.c Line: 158
PUSH 0
RETURNV
.source sched.c 100
;  Source: sched.c Line: 100
.function timer_isr
;  timer_isr

timer_isr:
.source sched.c 101
;  Source: sched.c Line: 101
.source sched.c 101
;  Source: sched.c Line: 101
PUSHREG 3
DUP
PUSH @g_isr
POPVARIND
POP
.source sched.c 102
;  Source: sched.c Line: 102
PUSH @g_isr
PUSHVARIND
PUSH @g_isr
PUSHVARIND
PUSH 1
PUSH 24
TIMES
MINUS
PUSH @g_isr
POPVARIND
POP
.source sched.c 104
;  Source: sched.c Line: 104
PUSH 2
DUP
PUSH @$g_pcb
PUSHVARIND
PUSH 24
PLUS
POPVARIND
POP
.source sched.c 108
;  Source: sched.c Line: 108
PUSH @$g_pcb
PUSHVARIND
PUSH @$os_pcb
NE
JUMPE @$$LABEL_8
.source sched.c 106
;  Source: sched.c Line: 106
PUSH @$g_pcb
PUSHVARIND
PUSH @$processes
PUSHVARIND
CALL @Q_Enqueue
POPARGS 8
POP
$$LABEL_8:
.source sched.c 108
;  Source: sched.c Line: 108
PUSH @g_isr
PUSHVARIND
CALL @preemptive
ADJSP -4
.source sched.c 110
;  Source: sched.c Line: 110
RTI
RETURN
.source sched.c 113
;  Source: sched.c Line: 113
.function preemptive
;  preemptive

preemptive:
.source sched.c 114
;  Source: sched.c Line: 114
PUSHVAR -12
PUSH 8
PLUS
PUSHVARIND
DUP
PUSH @$g_pcb
PUSHVARIND
PUSH 0
PLUS
PUSH 8
PLUS
POPVARIND
POP
.source sched.c 115
;  Source: sched.c Line: 115
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
DUP
PUSH @$g_pcb
PUSHVARIND
PUSH 0
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source sched.c 116
;  Source: sched.c Line: 116
PUSHVAR -12
PUSH 12
PLUS
PUSHVARIND
DUP
PUSH @$g_pcb
PUSHVARIND
PUSH 0
PLUS
PUSH 12
PLUS
POPVARIND
POP
.source sched.c 117
;  Source: sched.c Line: 117
PUSHVAR -12
PUSH 16
PLUS
PUSHVARIND
DUP
PUSH @$g_pcb
PUSHVARIND
PUSH 0
PLUS
PUSH 16
PLUS
POPVARIND
POP
.source sched.c 118
;  Source: sched.c Line: 118
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
DUP
PUSH @$g_pcb
PUSHVARIND
PUSH 0
PLUS
PUSH 4
PLUS
POPVARIND
POP
.source sched.c 119
;  Source: sched.c Line: 119
PUSHVAR -12
PUSH 20
PLUS
PUSHVARIND
DUP
PUSH @$g_pcb
PUSHVARIND
PUSH 0
PLUS
PUSH 20
PLUS
POPVARIND
POP
.source sched.c 121
;  Source: sched.c Line: 121
.source sched.c 121
;  Source: sched.c Line: 121
CALL @$next_process
DUP
PUSH @$g_pcb
POPVARIND
POP
.source sched.c 122
;  Source: sched.c Line: 122
PUSH 1
DUP
PUSH @$g_pcb
PUSHVARIND
PUSH 24
PLUS
POPVARIND
POP
.source sched.c 124
;  Source: sched.c Line: 124
PUSH @$g_pcb
PUSHVARIND
PUSH 0
PLUS
PUSH 8
PLUS
PUSHVARIND
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
.source sched.c 125
;  Source: sched.c Line: 125
PUSH @$g_pcb
PUSHVARIND
PUSH 0
PLUS
PUSH 0
PLUS
PUSHVARIND
DUP
PUSHVAR -12
PUSH 0
PLUS
POPVARIND
POP
.source sched.c 126
;  Source: sched.c Line: 126
PUSH @$g_pcb
PUSHVARIND
PUSH 0
PLUS
PUSH 12
PLUS
PUSHVARIND
DUP
PUSHVAR -12
PUSH 12
PLUS
POPVARIND
POP
.source sched.c 127
;  Source: sched.c Line: 127
PUSH @$g_pcb
PUSHVARIND
PUSH 0
PLUS
PUSH 16
PLUS
PUSHVARIND
DUP
PUSHVAR -12
PUSH 16
PLUS
POPVARIND
POP
.source sched.c 128
;  Source: sched.c Line: 128
PUSH @$g_pcb
PUSHVARIND
PUSH 0
PLUS
PUSH 20
PLUS
PUSHVARIND
DUP
PUSHVAR -12
PUSH 20
PLUS
POPVARIND
POP
.source sched.c 129
;  Source: sched.c Line: 129
PUSH @$g_pcb
PUSHVARIND
PUSH 0
PLUS
PUSH 4
PLUS
PUSHVARIND
DUP
PUSHVAR -12
PUSH 4
PLUS
POPVARIND
POP
RETURN
.source sched.c 132
;  Source: sched.c Line: 132
.function $next_process
;  $next_process

$next_process:
ADJSP 8
.source sched.c 133
;  Source: sched.c Line: 133
.source sched.c 135
;  Source: sched.c Line: 135
.source sched.c 135
;  Source: sched.c Line: 135
PUSH @$processes
PUSHVARIND
CALL @Q_Dequeue
POPARGS 4
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source sched.c 139
;  Source: sched.c Line: 139
PUSHVAR 0
PUSH 0
EQ
JUMPE @$$LABEL_9
.source sched.c 137
;  Source: sched.c Line: 137
PUSH @$os_pcb
RETURNV
$$LABEL_9:
.source sched.c 142
;  Source: sched.c Line: 142
$$LABEL_10:
PUSHVAR 0
PUSH 28
PLUS
PUSHVARIND
PUSH 201326604
PUSHVARIND
GT
JUMPE @$$LABEL_11
.source sched.c 140
;  Source: sched.c Line: 140
PUSHVAR 0
PUSH @$processes
PUSHVARIND
CALL @Q_Enqueue
POPARGS 8
POP
.source sched.c 141
;  Source: sched.c Line: 141
.source sched.c 141
;  Source: sched.c Line: 141
PUSH @$processes
PUSHVARIND
CALL @Q_Dequeue
POPARGS 4
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
JUMP @$$LABEL_10
$$LABEL_11:
.source sched.c 144
;  Source: sched.c Line: 144
PUSHVAR 0
RETURNV
.source sched.c 158
;  Source: sched.c Line: 158
PUSH 0
RETURNV
.source sched.c 147
;  Source: sched.c Line: 147
.function sched_exit
;  sched_exit

sched_exit:
ADJSP 8
.source sched.c 148
;  Source: sched.c Line: 148
PUSH @$g_pcb
PUSHVARIND
POPVAR 0
.source sched.c 156
;  Source: sched.c Line: 156
PUSHVAR 0
PUSH @$os_pcb
EQ
JUMPE @$$LABEL_12
.source sched.c 151
;  Source: sched.c Line: 151
HALT
JUMP @$$LABEL_13
$$LABEL_12:
.source sched.c 154
;  Source: sched.c Line: 154
PUSHVAR -12
CALL @preemptive
ADJSP -4
.source sched.c 155
;  Source: sched.c Line: 155
PUSHVAR 0
CALL @my_free
ADJSP -4
$$LABEL_13:
RETURN
