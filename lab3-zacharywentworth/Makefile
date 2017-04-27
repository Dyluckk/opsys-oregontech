all: user.slb os.slb

clean: 
	rm -f userMode
	rm -f user
	rm -f *.dbg
	rm -f *.lst
	rm -f *.xl
	rm -f *.slb
	rm -f *.ast
	rm -f *.sl

user.slb: userMode.sl user.sl
	slasm -dbg user.sl userMode.sl

os.slb: os.sl
	slasm -dbg os.sl

userMode.sl: userMode.c
	stacklc -c -dbg  userMode.c

user.sl: user.c
	stacklc -c -dbg user.c

os.sl: os.c
	stacklc -c -dbg os.c

