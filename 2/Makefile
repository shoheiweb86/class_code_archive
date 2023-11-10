SMLSHARP = smlsharp
SMLFLAGS = -O2
LIBS =
all: main
main: readIntList.smi main.smi readIntList.o main.o
	$(SMLSHARP) $(LDFLAGS) -o main main.smi $(LIBS)
readIntList.o: readIntList.sml readIntList.smi
	$(SMLSHARP) $(SMLFLAGS) -o readIntList.o -c readIntList.sml
main.o: main.sml readIntList.smi main.smi
	$(SMLSHARP) $(SMLFLAGS) -o main.o -c main.sml
