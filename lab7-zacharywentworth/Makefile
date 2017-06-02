all: user.slb user2.slb user3.slb os.slb

clean: 
	rm -f userMode
	rm -f user
	rm -f user2
	rm -f user3
	rm -f *.dbg
	rm -f *.lst
	rm -f *.xl
	rm -f *.slb
	rm -f *.ast
	rm -f *.sl

user.slb: userMode.sl user.sl
	slasm -dbg user.sl userMode.sl

user2.slb: userMode.sl user2.sl
	slasm -dbg user2.sl userMode.sl

user3.slb: userMode.sl user3.sl
	slasm -dbg user3.sl userMode.sl

os.slb: os.sl mymalloc.sl sched.sl queue.sl
	slasm -dbg os.sl mymalloc.sl sched.sl queue.sl

userMode.sl: userMode.c
	stacklc -c -dbg  userMode.c

user.sl: user.c
	stacklc -c -dbg user.c

user2.sl: user2.c
	stacklc -c -dbg user2.c

user3.sl: user3.c
	stacklc -c -dbg user3.c

os.sl: os.c
	stacklc -c -dbg os.c 

mymalloc.sl: mymalloc.c
	stacklc -c -dbg mymalloc.c

sched.sl: sched.c
	stacklc -c -dbg sched.c

queue.sl: queue.c queue.h
	stacklc -c -dbg queue.c

