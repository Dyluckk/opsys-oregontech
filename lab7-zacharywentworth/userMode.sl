#stackl V0.10.2-49-gab00cc5-dev stacklc
#feature inp
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
.source userMode.c 19
;  Source: userMode.c Line: 19
.source userMode.c 20
;  Source: userMode.c Line: 20
.source userMode.c 21
;  Source: userMode.c Line: 21
.source userMode.c 24
;  Source: userMode.c Line: 24
.source userMode.c 25
;  Source: userMode.c Line: 25
.source userMode.c 26
;  Source: userMode.c Line: 26
.source userMode.c 34
;  Source: userMode.c Line: 34
.function prints
;  prints

prints:
ADJSP 16
.source userMode.c 36
;  Source: userMode.c Line: 36
.source userMode.c 37
;  Source: userMode.c Line: 37
PUSH 3
DUP
PUSH 0
PUSHFP
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source userMode.c 38
;  Source: userMode.c Line: 38
PUSHVAR -12
DUP
PUSH 0
PUSHFP
PLUS
PUSH 4
PLUS
POPVARIND
POP
.source userMode.c 40
;  Source: userMode.c Line: 40
PUSH 0
PUSHFP
PLUS
CALL @syscall
ADJSP -4
.source userMode.c 43
;  Source: userMode.c Line: 43
PUSH 0
PUSHFP
PLUS
PUSH 8
PLUS
PUSHVARIND
RETURNV
.source userMode.c 188
;  Source: userMode.c Line: 188
PUSH 0
RETURNV
.source userMode.c 52
;  Source: userMode.c Line: 52
.function printi
;  printi

printi:
ADJSP 36
.source userMode.c 54
;  Source: userMode.c Line: 54
.source userMode.c 55
;  Source: userMode.c Line: 55
PUSH 3
DUP
PUSH 0
PUSHFP
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source userMode.c 57
;  Source: userMode.c Line: 57
.source userMode.c 58
;  Source: userMode.c Line: 58
PUSH 12
PUSHFP
PLUS
PUSHVAR -12
CALL @itostr
POPARGS 8
POP
.source userMode.c 59
;  Source: userMode.c Line: 59
PUSH 12
PUSHFP
PLUS
DUP
PUSH 0
PUSHFP
PLUS
PUSH 4
PLUS
POPVARIND
POP
.source userMode.c 61
;  Source: userMode.c Line: 61
PUSH 0
PUSHFP
PLUS
CALL @syscall
ADJSP -4
.source userMode.c 188
;  Source: userMode.c Line: 188
PUSH 0
RETURNV
.source userMode.c 70
;  Source: userMode.c Line: 70
.function geti
;  geti

geti:
ADJSP 20
.source userMode.c 72
;  Source: userMode.c Line: 72
.source userMode.c 73
;  Source: userMode.c Line: 73
PUSH 7
DUP
PUSH 0
PUSHFP
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source userMode.c 75
;  Source: userMode.c Line: 75
PUSH 0
POPVAR 12
.source userMode.c 76
;  Source: userMode.c Line: 76
PUSH 12
PUSHFP
PLUS
DUP
PUSH 0
PUSHFP
PLUS
PUSH 4
PLUS
POPVARIND
POP
.source userMode.c 78
;  Source: userMode.c Line: 78
PUSH 0
PUSHFP
PLUS
CALL @syscall
ADJSP -4
.source userMode.c 83
;  Source: userMode.c Line: 83
PUSH 0
PUSHFP
PLUS
PUSH 8
PLUS
PUSHVARIND
PUSH 0
EQ
JUMPE @$$LABEL_2
.source userMode.c 81
;  Source: userMode.c Line: 81
PUSHVAR 12
RETURNV
$$LABEL_2:
.source userMode.c 83
;  Source: userMode.c Line: 83
PUSH 1
NEG
RETURNV
.source userMode.c 188
;  Source: userMode.c Line: 188
PUSH 0
RETURNV
.source userMode.c 92
;  Source: userMode.c Line: 92
.function gets
;  gets

gets:
ADJSP 16
.source userMode.c 94
;  Source: userMode.c Line: 94
.source userMode.c 95
;  Source: userMode.c Line: 95
PUSH 6
DUP
PUSH 0
PUSHFP
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source userMode.c 96
;  Source: userMode.c Line: 96
PUSHVAR -12
DUP
PUSH 0
PUSHFP
PLUS
PUSH 4
PLUS
POPVARIND
POP
.source userMode.c 98
;  Source: userMode.c Line: 98
PUSH 0
PUSHFP
PLUS
CALL @syscall
ADJSP -4
.source userMode.c 100
;  Source: userMode.c Line: 100
PUSH 0
PUSHFP
PLUS
PUSH 8
PLUS
PUSHVARIND
RETURNV
.source userMode.c 188
;  Source: userMode.c Line: 188
PUSH 0
RETURNV
.source userMode.c 109
;  Source: userMode.c Line: 109
.function halt
;  halt

halt:
ADJSP 16
.source userMode.c 111
;  Source: userMode.c Line: 111
.source userMode.c 112
;  Source: userMode.c Line: 112
PUSH 1
DUP
PUSH 0
PUSHFP
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source userMode.c 114
;  Source: userMode.c Line: 114
PUSH 0
PUSHFP
PLUS
CALL @syscall
ADJSP -4
.source userMode.c 188
;  Source: userMode.c Line: 188
PUSH 0
RETURNV
.source userMode.c 118
;  Source: userMode.c Line: 118
.function exec
;  exec

exec:
ADJSP 16
.source userMode.c 119
;  Source: userMode.c Line: 119
.source userMode.c 120
;  Source: userMode.c Line: 120
PUSH 1
DUP
PUSH 0
PUSHFP
PLUS
PUSH 0
PLUS
POPVARIND
POP
.source userMode.c 121
;  Source: userMode.c Line: 121
PUSHVAR -12
DUP
PUSH 0
PUSHFP
PLUS
PUSH 4
PLUS
POPVARIND
POP
.source userMode.c 123
;  Source: userMode.c Line: 123
PUSH 0
PUSHFP
PLUS
CALL @syscall
ADJSP -4
.source userMode.c 125
;  Source: userMode.c Line: 125
PUSH 0
PUSHFP
PLUS
PUSH 8
PLUS
PUSHVARIND
RETURNV
.source userMode.c 188
;  Source: userMode.c Line: 188
PUSH 0
RETURNV
.source userMode.c 134
;  Source: userMode.c Line: 134
.function syscall
;  syscall

syscall:
ADJSP 8
.source userMode.c 151
;  Source: userMode.c Line: 151
.source userMode.c 135
;  Source: userMode.c Line: 135
PUSHVAR -12
CALL @validate_args
POPARGS 4
PUSH 0
EQ
JUMPE @$$LABEL_3
.source userMode.c 147
;  Source: userMode.c Line: 147
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 6
EQ
DUP
JUMPE @$$LABEL_8
JUMP @$$LABEL_7
$$LABEL_8:
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 7
EQ
OR
$$LABEL_7:
DUP
JUMPE @$$LABEL_6
JUMP @$$LABEL_5
$$LABEL_6:
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 8
EQ
OR
$$LABEL_5:
JUMPE @$$LABEL_4
.source userMode.c 138
;  Source: userMode.c Line: 138
TRAP
.source userMode.c 139
;  Source: userMode.c Line: 139
$$LABEL_9:
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 0
GE
JUMPE @$$LABEL_10
JUMP @$$LABEL_9
$$LABEL_10:
.source userMode.c 141
;  Source: userMode.c Line: 141
.source userMode.c 142
;  Source: userMode.c Line: 142
.source userMode.c 142
;  Source: userMode.c Line: 142
PUSHREG 0
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source userMode.c 143
;  Source: userMode.c Line: 143
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 0
PLUS
DUP
PUSHVAR -12
PUSH 4
PLUS
POPVARIND
POP
JUMP @$$LABEL_11
$$LABEL_4:
.source userMode.c 146
;  Source: userMode.c Line: 146
TRAP
$$LABEL_11:
JUMP @$$LABEL_12
$$LABEL_3:
.source userMode.c 151
;  Source: userMode.c Line: 151
PUSH 1
NEG
DUP
PUSHVAR -12
PUSH 8
PLUS
POPVARIND
POP
$$LABEL_12:
RETURN
.source userMode.c 160
;  Source: userMode.c Line: 160
.function validate_args
;  validate_args

validate_args:
.source userMode.c 162
;  Source: userMode.c Line: 162
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 1
EQ
JUMPE @$$LABEL_13
.source userMode.c 161
;  Source: userMode.c Line: 161
PUSH 0
RETURNV
$$LABEL_13:
.source userMode.c 163
;  Source: userMode.c Line: 163
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 3
EQ
JUMPE @$$LABEL_14
.source userMode.c 162
;  Source: userMode.c Line: 162
.source userMode.c 162
;  Source: userMode.c Line: 162
PUSHVAR -12
CALL @check_limits
POPARGS 4
RETURNV
$$LABEL_14:
.source userMode.c 164
;  Source: userMode.c Line: 164
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 7
EQ
JUMPE @$$LABEL_15
.source userMode.c 163
;  Source: userMode.c Line: 163
.source userMode.c 163
;  Source: userMode.c Line: 163
PUSHVAR -12
CALL @check_limits
POPARGS 4
RETURNV
$$LABEL_15:
.source userMode.c 165
;  Source: userMode.c Line: 165
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 6
EQ
JUMPE @$$LABEL_16
.source userMode.c 164
;  Source: userMode.c Line: 164
.source userMode.c 164
;  Source: userMode.c Line: 164
PUSHVAR -12
CALL @check_limits
POPARGS 4
RETURNV
$$LABEL_16:
.source userMode.c 167
;  Source: userMode.c Line: 167
PUSHVAR -12
PUSH 0
PLUS
PUSHVARIND
PUSH 8
EQ
JUMPE @$$LABEL_17
.source userMode.c 165
;  Source: userMode.c Line: 165
.source userMode.c 165
;  Source: userMode.c Line: 165
PUSHVAR -12
CALL @check_limits
POPARGS 4
RETURNV
$$LABEL_17:
.source userMode.c 167
;  Source: userMode.c Line: 167
PUSH 1
NEG
RETURNV
.source userMode.c 188
;  Source: userMode.c Line: 188
PUSH 0
RETURNV
.source userMode.c 176
;  Source: userMode.c Line: 176
.function check_limits
;  check_limits

check_limits:
ADJSP 12
.source userMode.c 178
;  Source: userMode.c Line: 178
.source userMode.c 179
;  Source: userMode.c Line: 179
.source userMode.c 180
;  Source: userMode.c Line: 180
.source userMode.c 180
;  Source: userMode.c Line: 180
PUSHREG 1
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source userMode.c 181
;  Source: userMode.c Line: 181
.source userMode.c 181
;  Source: userMode.c Line: 181
PUSHREG 0
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source userMode.c 186
;  Source: userMode.c Line: 186
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
PUSH 0
GT
DUP
JUMPE @$$LABEL_19
PUSHVAR -12
PUSH 4
PLUS
PUSHVARIND
PUSHVAR 0
PUSHVAR 4
MINUS
LT
AND
$$LABEL_19:
JUMPE @$$LABEL_18
.source userMode.c 184
;  Source: userMode.c Line: 184
PUSH 0
RETURNV
$$LABEL_18:
.source userMode.c 186
;  Source: userMode.c Line: 186
PUSH 1
NEG
RETURNV
.source userMode.c 188
;  Source: userMode.c Line: 188
PUSH 0
RETURNV
