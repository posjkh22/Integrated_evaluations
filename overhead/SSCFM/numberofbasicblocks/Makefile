

TARGET 		= getBasicBlockNum
SRC			= $(PWD)/src
LIB			= $(PWD)/lib
INCLUDE		= $(PWD)/include

MONITOR		= $(PWD)/monitor
SIGNAL 	 	= $(PWD)/signal
SAMPLE 	 	= $(PWD)/sample 

INPUT 		= main
OUTPUT		= outputs


run_whetstone:
	./$(TARGET) ../benchmarks/whetstone/whetstone.bc

run_dhrystone:
	./$(TARGET) ../benchmarks/dhrystone/dhrystone.bc

run_big_dhrystone:
	./$(TARGET) ../benchmarks/big_dhrystone/big_dhrystone.bc

run_fft:
	./$(TARGET) ../benchmarks/fft/fft.bc

run_dijkstra:
	./$(TARGET) ../benchmarks/dijkstra/dijkstra.bc

run_sha:
	./$(TARGET) ../benchmarks/sha/sha.bc

run_basicmath:
	./$(TARGET) ../benchmarks/basicmath/basicmath.bc

run_stringsearch:
	./$(TARGET) ../benchmarks/stringsearch/stringsearch.bc

run_crc:
	./$(TARGET) ../benchmarks/crc/crc.bc





link: result_clean
	clang++ -std=c++11 \
	$(LIB)/main.o \
	$(LIB)/MetaDataSet.o \
	$(LIB)/wFunction.o \
	$(LIB)/wBasicBlock.o \
	$(LIB)/wInstruction.o \
	$(LIB)/Analyzer.o \
	-o $(TARGET) \
	`llvm-config --cxxflags --libs --ldflags --system-libs`

all: clean \
		main \
		Analyzer \
		MetaDataSet \
		wFunction \
		wBasicBlock \
		wInstruction
	clang++ -std=c++11 \
	$(LIB)/main.o \
	$(LIB)/MetaDataSet.o \
	$(LIB)/wFunction.o \
	$(LIB)/wBasicBlock.o \
	$(LIB)/wInstruction.o \
	$(LIB)/Analyzer.o \
	-o $(TARGET) \
	`llvm-config --cxxflags --libs --ldflags --system-libs`
	
	
main:
	clang++ -std=c++11 -c main.cpp  \
	-o $(LIB)/main.o \
	`llvm-config --cxxflags` \
	-I$(INCLUDE)

Analyzer:
	clang++ -std=c++11 \
	-c $(SRC)/Analyzer.cpp \
	-o $(LIB)/Analyzer.o \
	`llvm-config --cxxflags` \
	-I$(INCLUDE)

MetaDataSet:
	clang++ -std=c++11 \
	-c $(SRC)/MetaDataSet.cpp \
	-o $(LIB)/MetaDataSet.o \
	`llvm-config --cxxflags` \
	-I$(INCLUDE)

wFunction:
	clang++ -std=c++11 \
	-c $(SRC)/wFunction.cpp \
	-o $(LIB)/wFunction.o \
	`llvm-config --cxxflags` \
	-I$(INCLUDE)
	
wBasicBlock:
	clang++ -std=c++11 \
	-c $(SRC)/wBasicBlock.cpp \
	-o $(LIB)/wBasicBlock.o \
	`llvm-config --cxxflags` \
	-I$(INCLUDE)

wInstruction:
	clang++ -std=c++11 \
	-c $(SRC)/wInstruction.cpp \
	-o $(LIB)/wInstruction.o \
	-I$(INCLUDE) \
	`llvm-config --cxxflags`


clean:
	rm -f $(TARGET) test_out $(LIB)/*.o Analysis* DebugProcessedModule CoarseAnalysisForFunctionConnection

result_clean:
	rm -f test_out DebugProcessedModule CoarseAnalysisForFunctionConnection

