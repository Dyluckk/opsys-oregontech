#stackl V0.10.2-49-gab00cc5-dev stacklc
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
.source queue.c 25
;  Source: queue.c Line: 25
.source queue.c 26
;  Source: queue.c Line: 26
.source queue.c 27
;  Source: queue.c Line: 27
.source queue.c 28
;  Source: queue.c Line: 28
.source queue.c 38
;  Source: queue.c Line: 38
.function Q_Init
;  Q_Init

Q_Init:
ADJSP 8
.source queue.c 40
;  Source: queue.c Line: 40
.source queue.c 41
;  Source: queue.c Line: 41
.source queue.c 41
;  Source: queue.c Line: 41
PUSH 16
PUSHVAR -12
PUSH 1
MINUS
PUSH 4
TIMES
PLUS
CALL @my_malloc
POPARGS 4
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source queue.c 49
;  Source: queue.c Line: 49
PUSHVAR 0
PUSH 0
NE
JUMPE @$$LABEL_2
.source queue.c 44
;  Source: queue.c Line: 44
PUSH 0
DUP
PUSHVAR 0
PUSH 0
PLUS
POPVARIND
POP
.source queue.c 45
;  Source: queue.c Line: 45
PUSH 0
DUP
PUSHVAR 0
PUSH 4
PLUS
POPVARIND
POP
.source queue.c 46
;  Source: queue.c Line: 46
PUSHVAR -12
DUP
PUSHVAR 0
PUSH 8
PLUS
POPVARIND
POP
$$LABEL_2:
.source queue.c 49
;  Source: queue.c Line: 49
PUSHVAR 0
RETURNV
.source queue.c 121
;  Source: queue.c Line: 121
PUSH 0
RETURNV
.source queue.c 60
;  Source: queue.c Line: 60
.function Q_Destroy
;  Q_Destroy

Q_Destroy:
.source queue.c 64
;  Source: queue.c Line: 64
PUSHVAR -12
PUSH 0
EQ
JUMPE @$$LABEL_3
.source queue.c 62
;  Source: queue.c Line: 62
PUSH 1
NEG
RETURNV
$$LABEL_3:
.source queue.c 64
;  Source: queue.c Line: 64
PUSHVAR -12
CALL @my_free
ADJSP -4
.source queue.c 65
;  Source: queue.c Line: 65
PUSH 0
RETURNV
.source queue.c 121
;  Source: queue.c Line: 121
PUSH 0
RETURNV
.source queue.c 74
;  Source: queue.c Line: 74
.function Q_Enqueue
;  Q_Enqueue

Q_Enqueue:
ADJSP 12
.source queue.c 77
;  Source: queue.c Line: 77
PUSHVAR -12
PUSH 0
EQ
JUMPE @$$LABEL_4
.source queue.c 76
;  Source: queue.c Line: 76
PUSH 1
NEG
RETURNV
$$LABEL_4:
.source queue.c 77
;  Source: queue.c Line: 77
.source queue.c 78
;  Source: queue.c Line: 78
PUSHVAR -12
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source queue.c 79
;  Source: queue.c Line: 79
.source queue.c 80
;  Source: queue.c Line: 80
PUSHVAR 0
PUSH 0
PLUS
PUSHVARIND
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source queue.c 81
;  Source: queue.c Line: 81
PUSHVAR 4
PUSH 1
PLUS
PUSHVAR 0
PUSH 8
PLUS
PUSHVARIND
MOD
DUP
PUSH 4
PUSHFP
PLUS
POPVARIND
POP
.source queue.c 83
;  Source: queue.c Line: 83
PUSHVAR 4
PUSHVAR 0
PUSH 4
PLUS
PUSHVARIND
EQ
JUMPE @$$LABEL_5
.source queue.c 82
;  Source: queue.c Line: 82
PUSH 2
NEG
RETURNV
$$LABEL_5:
.source queue.c 83
;  Source: queue.c Line: 83
PUSHVAR -16
DUP
PUSHVAR 0
PUSH 12
PLUS
PUSHVAR 0
PUSH 0
PLUS
PUSHVARIND
PUSH 4
TIMES
PLUS
POPVARIND
POP
.source queue.c 84
;  Source: queue.c Line: 84
PUSHVAR 4
DUP
PUSHVAR 0
PUSH 0
PLUS
POPVARIND
POP
.source queue.c 121
;  Source: queue.c Line: 121
PUSH 0
RETURNV
.source queue.c 94
;  Source: queue.c Line: 94
.function Q_Dequeue
;  Q_Dequeue

Q_Dequeue:
ADJSP 12
.source queue.c 97
;  Source: queue.c Line: 97
PUSHVAR -12
PUSH 0
EQ
JUMPE @$$LABEL_6
.source queue.c 96
;  Source: queue.c Line: 96
PUSH 0
RETURNV
$$LABEL_6:
.source queue.c 97
;  Source: queue.c Line: 97
PUSHVAR -12
POPVAR 0
.source queue.c 100
;  Source: queue.c Line: 100
PUSHVAR 0
PUSH 0
PLUS
PUSHVARIND
PUSHVAR 0
PUSH 4
PLUS
PUSHVARIND
EQ
JUMPE @$$LABEL_7
.source queue.c 98
;  Source: queue.c Line: 98
PUSH 0
RETURNV
$$LABEL_7:
.source queue.c 100
;  Source: queue.c Line: 100
.source queue.c 100
;  Source: queue.c Line: 100
PUSHVAR 0
PUSH 12
PLUS
PUSHVAR 0
PUSH 4
PLUS
PUSHVARIND
PUSH 4
TIMES
PLUS
PUSHVARIND
POPVAR 4
.source queue.c 101
;  Source: queue.c Line: 101
PUSHVAR 0
PUSH 4
PLUS
PUSHVARIND
PUSH 1
PLUS
PUSHVAR 0
PUSH 8
PLUS
PUSHVARIND
MOD
DUP
PUSHVAR 0
PUSH 4
PLUS
POPVARIND
POP
.source queue.c 103
;  Source: queue.c Line: 103
PUSHVAR 4
RETURNV
.source queue.c 121
;  Source: queue.c Line: 121
PUSH 0
RETURNV
.source queue.c 109
;  Source: queue.c Line: 109
.function Q_Elements
;  Q_Elements

Q_Elements:
ADJSP 12
.source queue.c 111
;  Source: queue.c Line: 111
.source queue.c 113
;  Source: queue.c Line: 113
PUSHVAR -12
POPVAR 4
.source queue.c 115
;  Source: queue.c Line: 115
PUSHVAR 4
PUSH 0
PLUS
PUSHVARIND
PUSHVAR 4
PUSH 4
PLUS
PUSHVARIND
MINUS
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
.source queue.c 118
;  Source: queue.c Line: 118
PUSHVAR 0
PUSH 0
LT
JUMPE @$$LABEL_8
.source queue.c 116
;  Source: queue.c Line: 116
PUSHVAR 0
PUSHVAR 4
PUSH 8
PLUS
PUSHVARIND
PLUS
DUP
PUSH 0
PUSHFP
PLUS
POPVARIND
POP
$$LABEL_8:
.source queue.c 118
;  Source: queue.c Line: 118
PUSHVAR 0
RETURNV
.source queue.c 121
;  Source: queue.c Line: 121
PUSH 0
RETURNV
