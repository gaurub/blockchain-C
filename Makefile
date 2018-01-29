#declaring properties
RM = rm -rf

BIN_DIR = bin

OBJECTS = blockchain

OFILES = $(OBJECTS:%=%.o)

OFILES_BIN = $(OBJECTS:%=%.o)

CCC = gcc

EXECUTABLE = blockchain

LFLAGS = 

LIBS = -lcrypto

IFLAGS = 

BASEDIR =

COMPILEFLAGS += -Wall -g -std=c11 -DDEBUG

all : $(EXECUTABLE) $(TEST_EXECUTABLE)

$(EXECUTABLE) : $(OFILES)
	@echo
	$(CCC) -o $(EXECUTABLE) $(COMPILEFLAGS) $(OFILES) $(IFLAGS) $(LFLAGS) $(LIBS)

%.o : %.c
	$(CCC) $(COMPILEFLAGS) $(IFLAGS) $(CCFLAG) -c $< -o $@
	
%c : %.h

clean:
	$(RM) $(OFILES)
	$(RM) $(EXECUTABLE)
