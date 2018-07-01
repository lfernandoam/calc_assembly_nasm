PROG = calc

LD = ld 
NASM = nasm   

LDFLAGS = -m elf_i386
NASMFLAGS = -f elf

default: $(PROG)  

$(PROG).o: $(PROG).asm 
	$(NASM) $(NASMFLAGS) $(PROG).asm

$(PROG): $(PROG).o  
	$(LD) $(LDFLAGS) $(PROG).o -o $(PROG)  

clean: 
	rm -rf *.o *~  

cleanall: 
	rm -rf *.o $(PROG) *~