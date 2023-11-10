SMLSHARP = smlsharp
SMLFLAGS = -O2
LIBS =
all: main
main: printLines.smi main.smi printLines.o main.o
	$(SMLSHARP) $(LDFLAGS) -o main main.smi $(LIBS)
printLines.o: printLines.sml printLines.smi
	$(SMLSHARP) $(SMLFLAGS) -o printLines.o -c printLines.sml
main.o: main.sml printLines.smi main.smi
	$(SMLSHARP) $(SMLFLAGS) -o main.o -c main.sml
