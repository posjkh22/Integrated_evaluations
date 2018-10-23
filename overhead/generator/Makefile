
BENCH_MARK = ../outputs
INPUT_MAIN = translated
LIST 	= ./list
STACK 	= ./stack
SSTACK 	= ./sstack
TREE 	= ./tree
HASH 	= ./hash
FINAL_OUTPUT_BINARY = final_output_binary

#IPCFG_TYPE=hash
IPCFG_TYPE=list
#IPCFG_TYPE=avltree


# Benchmark: whetstone 

whetstone_TH1: ws_monitor_th1 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

whetstone_TH2: ws_monitor_th2 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

whetstone_TH3: ws_monitor_th3 aces_sstack input fine_initialize_monitor
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

whetstone_TH4: ws_monitor_th4 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread


ws_monitor_th1:
	gcc -c monitor.c -DTH_NUM_1 -DBENCH_WS

ws_monitor_th2:
	gcc -c monitor.c -DTH_NUM_2 -DBENCH_WS

ws_monitor_th3:
	gcc -c monitor.c -DTH_NUM_3 -DBENCH_WS

ws_monitor_th4:
	gcc -c monitor.c -DTH_NUM_4 -DBENCH_WS





# Benchmark: dhrystone 



dhrystone_TH1: ds_monitor_th1 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

dhrystone_TH2: ds_monitor_th2 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

dhrystone_TH3: ds_monitor_th3 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

dhrystone_TH4: ds_monitor_th4 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread



ds_monitor_th1:
	gcc -c monitor.c -DTH_NUM_1 -DBENCH_DS

ds_monitor_th2:
	gcc -c monitor.c -DTH_NUM_2 -DBENCH_DS

ds_monitor_th3:
	gcc -c monitor.c -DTH_NUM_3 -DBENCH_DS

ds_monitor_th4:
	gcc -c monitor.c -DTH_NUM_4 -DBENCH_DS




# benchmark: big_dhrystone 

big_dhrystone_TH1: bds_monitor_th1 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

big_dhrystone_TH2: bds_monitor_th2 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

big_dhrystone_TH3: bds_monitor_th3 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

big_dhrystone_TH4: bds_monitor_th4 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread


bds_monitor_th1:
	gcc -c monitor.c -DTH_NUM_1 -DBENCH_BDS

bds_monitor_th2:
	gcc -c monitor.c -DTH_NUM_2 -DBENCH_BDS

bds_monitor_th3:
	gcc -c monitor.c -DTH_NUM_3 -DBENCH_BDS

bds_monitor_th4:
	gcc -c monitor.c -DTH_NUM_4 -DBENCH_BDS




# benchmark: fft 

fft_TH1: fft_monitor_th1 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

fft_TH2: fft_monitor_th2 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

fft_TH3: fft_monitor_th3 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

fft_TH4: fft_monitor_th4 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread


fft_monitor_th1:
	gcc -c monitor.c -DTH_NUM_1 -DBENCH_FFT

fft_monitor_th2:
	gcc -c monitor.c -DTH_NUM_2 -DBENCH_FFT

fft_monitor_th3:
	gcc -c monitor.c -DTH_NUM_3 -DBENCH_FFT

fft_monitor_th4:
	gcc -c monitor.c -DTH_NUM_4 -DBENCH_FFT


# benchmark: dijkstra 

dijkstra_TH1: dj_monitor_th1 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

dijkstra_TH2: dj_monitor_th2 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

dijkstra_TH3: dj_monitor_th3 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

dijkstra_TH4: dj_monitor_th4 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread


dj_monitor_th1:
	gcc -c monitor.c -DTH_NUM_1 -DBENCH_DJ

dj_monitor_th2:
	gcc -c monitor.c -DTH_NUM_2 -DBENCH_DJ

dj_monitor_th3:
	gcc -c monitor.c -DTH_NUM_3 -DBENCH_DJ

dj_monitor_th4:
	gcc -c monitor.c -DTH_NUM_4 -DBENCH_DJ




# Benchmark: patricia 

patricia_TH1: pt_monitor_th1 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

patricia_TH2: pt_monitor_th2 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

patricia_TH3: pt_monitor_th3 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

patricia_TH4: pt_monitor_th4 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread


pt_monitor_th1:
	gcc -c monitor.c -DTH_NUM_1 -DBENCH_PT

pt_monitor_th2:
	gcc -c monitor.c -DTH_NUM_2 -DBENCH_PT

pt_monitor_th3:
	gcc -c monitor.c -DTH_NUM_3 -DBENCH_PT

pt_monitor_th4:
	gcc -c monitor.c -DTH_NUM_4 -DBENCH_PT




# Benchmark: sha 

sha_TH1: sha_monitor_th1 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

sha_TH2: sha_monitor_th2 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

sha_TH3: sha_monitor_th3 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

sha_TH4: sha_monitor_th4 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread


sha_monitor_th1:
	gcc -c monitor.c -DTH_NUM_1 -DBENCH_SHA

sha_monitor_th2:
	gcc -c monitor.c -DTH_NUM_2 -DBENCH_SHA

sha_monitor_th3:
	gcc -c monitor.c -DTH_NUM_3 -DBENCH_SHA

sha_monitor_th4:
	gcc -c monitor.c -DTH_NUM_4 -DBENCH_SHA


# Benchmark: basicmath

basicmath_TH1: bm_monitor_th1 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

basicmath_TH2: bm_monitor_th2 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

basicmath_TH3: bm_monitor_th3 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

basicmath_TH4: bm_monitor_th4 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread


bm_monitor_th1:
	gcc -c monitor.c -DTH_NUM_1 -DBENCH_BM

bm_monitor_th2:
	gcc -c monitor.c -DTH_NUM_2 -DBENCH_BM

bm_monitor_th3:
	gcc -c monitor.c -DTH_NUM_3 -DBENCH_BM

bm_monitor_th4:
	gcc -c monitor.c -DTH_NUM_4 -DBENCH_BM




# Benchmark: stringsearch

stringsearch_TH1: ss_monitor_th1 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

stringsearch_TH2: ss_monitor_th2 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

stringsearch_TH3: ss_monitor_th3 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

stringsearch_TH4: ss_monitor_th4 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread


ss_monitor_th1:
	gcc -c monitor.c -DTH_NUM_1 -DBENCH_SS

ss_monitor_th2:
	gcc -c monitor.c -DTH_NUM_2 -DBENCH_SS

ss_monitor_th3:
	gcc -c monitor.c -DTH_NUM_3 -DBENCH_SS

ss_monitor_th4:
	gcc -c monitor.c -DTH_NUM_4 -DBENCH_SS





# Benchmark: crc

crc_TH1: crc_monitor_th1 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

crc_TH2: crc_monitor_th2 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

crc_TH3: crc_monitor_th3 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread

crc_TH4: crc_monitor_th4 aces_sstack input fine_initialize_monitor 
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread


crc_monitor_th1:
	gcc -c monitor.c -DTH_NUM_1 -DBENCH_CRC

crc_monitor_th2:
	gcc -c monitor.c -DTH_NUM_2 -DBENCH_CRC

crc_monitor_th3:
	gcc -c monitor.c -DTH_NUM_3 -DBENCH_CRC

crc_monitor_th4:
	gcc -c monitor.c -DTH_NUM_4 -DBENCH_CRC





ifeq ($(IPCFG_TYPE), hash)
fine_objects: aces_stack aces_hash fine_initialize_monitor 
endif


ifeq ($(IPCFG_TYPE), avltree)
fine_objects: aces_stack aces_avltree fine_initialize_monitor 
endif

ifeq ($(IPCFG_TYPE), list)
fine_objects: aces_stack aces_list fine_initialize_monitor 
endif

coarse_objects: monitor aces_stack aces_list aces_avltree aces_hash coarse_initialize_monitor




ifeq ($(IPCFG_TYPE), hash)
link: fine_objects input
	make -C ./CFE_RANDOM
	gcc -c CFE_INJECTION.c
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o  $(STACK)/aces_stack.o $(HASH)/aces_hash.o -lm -lpthread
	@echo [IPCFG: Hash]
endif

ifeq ($(IPCFG_TYPE), avltree)
link: fine_objects input
	make -C ./CFE_RANDOM
	gcc -c CFE_INJECTION.c
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(TREE)/aces_avltree.o -lm -lpthread
	@echo [IPCFG: avltree]
endif




ifeq ($(IPCFG_TYPE), list)
link_TH1: fine_objects input CFE_INJECTION monitor_th1
	make -C ./CFE_RANDOM
	gcc -c CFE_INJECTION.c
	gcc -o $(FINAL_OUTPUT_BINARY) $(INPUT_MAIN).o fine_initialize_monitor.o monitor.o CFE_INJECTION.o $(SSTACK)/aces_sstack.o $(STACK)/aces_stack.o $(LIST)/aces_list.o -lm -lpthread
	@echo [IPCFG: List]
endif





	

# Benchmark input file #

CFE_INJECTION: CFE_INJECTION.c
	gcc -c CFE_INJECTION.c

input:
	llc $(BENCH_MARK)/$(INPUT_MAIN).ll -o $(INPUT_MAIN).s
	gcc -c $(INPUT_MAIN).s




# generated monitor code #

fine_initialize_monitor:
	cp -f $(BENCH_MARK)/fine_initialize_monitor.c .
	gcc -c fine_initialize_monitor.c

coarse_initiailize_monitor:
	cp -f $(BENCH_MARK)/coarse_initialize_monitor.c .
	gcc -c coarse_initialize_monitor.c





# Libraries #

aces_stack:
	make -C $(STACK)

aces_sstack:
	make -C $(SSTACK)

aces_list:
	make -C $(LIST)

aces_avltree:
	make -C $(TREE)

aces_hash:
	make -C $(HASH)


clean:
	rm -f *.o *.s  $(FINAL_OUTPUT_BINARY)
