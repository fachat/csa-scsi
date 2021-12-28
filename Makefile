
DRIVER=csascsi1.a65 

all: petscsi1 petscsi2

tst: tst.a65 petbind.a65 ${DRIVER}
	xa -R -bt 1023 -bb 16384 -bd 828 -bz 84 -o tst.o65 tst.a65 
	file65 tst.o65
	reloc65 -o tst -X tst.o65
	rm tst.o65

petscsi1: petscsi1.a65 petbind.a65 ${DRIVER}
	xa -R -bt 1023 -bb 16384 -bd 828 -bz 84 -o petscsi1.o65 petscsi1.a65 
	file65 petscsi1.o65
	reloc65 -o petscsi1 -X petscsi1.o65
	rm petscsi1.o65

petscsi2: petscsi2.a65 petbind.a65 ${DRIVER}
	xa -R -bt 1023 -bb 16384 -bd 828 -bz 84 -o petscsi2.o65 petscsi2.a65 
	file65 petscsi2.o65
	reloc65 -o petscsi2 -X petscsi2.o65
	rm petscsi2.o65

clean:
	rm petscsi1 petscsi2

