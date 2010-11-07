## No dragons yet ##################

TARG=SimpleCurves
JAVAFILES=\
	$(TARG).java\

## Here be dragons #################

JAVAC=javac
JAVA=java
CFLAGS+=-cp ./:core.jar
RFLAGS+=$(CFLAGS)

## Here be even more dragons #######

OBJFILES = $(JAVAFILES:%.java=%.class)

all: obj

debug:
	echo "Not implemented"
	false
	#CFLAGS="-DDEBUG -ggdb" make all

obj: $(OBJFILES)

%.class:
	$(JAVAC) $(CFLAGS) $(@:%.class=%.java)

clean:
	-@rm *.class $(TARG) *~

run:
	$(JAVA) $(RFLAGS) $(TARG) $(TARG)

.PHONEY: all
