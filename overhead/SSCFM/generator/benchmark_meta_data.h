



// Benchmark: whetstone

#ifdef BENCH_WS

#define FROM	0x400e30
#define TO		0x401cc0 - 16


#ifdef TH_NUM_1
#define SIGNATURE_QUEUE_SIZE	1200000 	// one
#endif

#ifdef TH_NUM_2
#define SIGNATURE_QUEUE_SIZE	600000 	// two
#endif

#ifdef TH_NUM_3
#define SIGNATURE_QUEUE_SIZE	400000 	// three 
#endif

#ifdef TH_NUM_4
#define SIGNATURE_QUEUE_SIZE	300000 	// four 
#endif
#endif





// Benchmark: dhrystone

#ifdef BENCH_DS

#define FROM	0x400d60
#define TO		0x401950 - 16



#ifdef TH_NUM_1
#define SIGNATURE_QUEUE_SIZE 90000	// one
#endif

#ifdef TH_NUM_2
#define SIGNATURE_QUEUE_SIZE 45000 	// two
#endif

#ifdef TH_NUM_3
#define SIGNATURE_QUEUE_SIZE 30000 	// three 
#endif

#ifdef TH_NUM_4
#define SIGNATURE_QUEUE_SIZE 27000 	// four 
#endif
#endif





// Benchmark: big_dhrystone

#ifdef BENCH_BIG_DS

#define FROM	0x400d60
#define TO		0x401950 - 16

#ifdef TH_NUM_1
#define SIGNATURE_QUEUE_SIZE 9000000	// one
#endif

#ifdef TH_NUM_2
#define SIGNATURE_QUEUE_SIZE 4500000 	// two
#endif

#ifdef TH_NUM_3
#define SIGNATURE_QUEUE_SIZE 3000000 	// three 
#endif

#ifdef TH_NUM_4
#define SIGNATURE_QUEUE_SIZE 2700000 	// four 
#endif
#endif



// Benchmark: fft

#ifdef BENCH_FFT

#define FROM	0x400da0
#define TO		0x401bd0 - 16

#ifdef TH_NUM_1
#define SIGNATURE_QUEUE_SIZE 5000000 	// one
#endif

#ifdef TH_NUM_2
#define SIGNATURE_QUEUE_SIZE 2500000 	// two
#endif

#ifdef TH_NUM_3
#define SIGNATURE_QUEUE_SIZE 1700000 	// three 
#endif

#ifdef TH_NUM_4
#define SIGNATURE_QUEUE_SIZE 1300000 	// four
#endif
#endif




// Benchmark: dijkstra

#ifdef BENCH_DJ

#define FROM 	0x400d50
#define TO		0x4014e0 - 16

#ifdef TH_NUM_1
#define SIGNATURE_QUEUE_SIZE 15000000 // one
#endif

#ifdef TH_NUM_2
#define SIGNATURE_QUEUE_SIZE 7500000 	// two
#endif

#ifdef TH_NUM_3
#define SIGNATURE_QUEUE_SIZE 5000000 	// three 
#endif

#ifdef TH_NUM_4
#define SIGNATURE_QUEUE_SIZE 3800000 	// four 
#endif
#endif




// Benchmark: patricia

#ifdef BENCH_PT

#define FROM	0x400e40
#define TO		0x4023c0 - 16

#ifdef TH_NUM_1
#define SIGNATURE_QUEUE_SIZE 350000 	// one
#endif

#ifdef TH_NUM_2
#define SIGNATURE_QUEUE_SIZE 180000 	// two
#endif

#ifdef TH_NUM_3
#define SIGNATURE_QUEUE_SIZE 120000 	// three 
#endif

#ifdef TH_NUM_4
#define SIGNATURE_QUEUE_SIZE 90000 	// four 
#endif
#endif





// Benchmark: sha

#ifdef BENCH_SHA

#define FROM	0x400d60
#define TO		0x401820 -16

#ifdef TH_NUM_1
#define SIGNATURE_QUEUE_SIZE 2600000 	// one
#endif

#ifdef TH_NUM_2
#define SIGNATURE_QUEUE_SIZE 1300000 	// two
#endif

#ifdef TH_NUM_3
#define SIGNATURE_QUEUE_SIZE 900000 	// three 
#endif

#ifdef TH_NUM_4
#define SIGNATURE_QUEUE_SIZE 700000 	// four 
#endif
#endif




// Benchmark: basicmath

#ifdef BENCH_BM

#define FROM 	0x400df0
#define TO		0x401ea0 - 16

#ifdef TH_NUM_1
#define SIGNATURE_QUEUE_SIZE  13000000 	// one
#endif

#ifdef TH_NUM_2
#define SIGNATURE_QUEUE_SIZE 6000000 	// two
#endif

#ifdef TH_NUM_3
#define SIGNATURE_QUEUE_SIZE 4000000 	// three 
#endif

#ifdef TH_NUM_4
#define SIGNATURE_QUEUE_SIZE 3000000 	// four
#endif
#endif





// Benchmark: stringsearch

#ifdef BENCH_SS

#define FROM	0x400e80
#define TO		0x402020 - 16

#ifdef TH_NUM_1
#define SIGNATURE_QUEUE_SIZE 1100000 	// one
#endif

#ifdef TH_NUM_2
#define SIGNATURE_QUEUE_SIZE 550000 	// two
#endif

#ifdef TH_NUM_3
#define SIGNATURE_QUEUE_SIZE 400000 	// three 
#endif

#ifdef TH_NUM_4
#define SIGNATURE_QUEUE_SIZE 300000 	// four
#endif
#endif





// Benchmark: crc

#ifdef BENCH_CRC

#define FROM	0x400d40	
#define TO		0x401130 - 16

#ifdef TH_NUM_1
#define SIGNATURE_QUEUE_SIZE 5000000 	// one
#endif

#ifdef TH_NUM_2
#define SIGNATURE_QUEUE_SIZE 2500000 	// two
#endif

#ifdef TH_NUM_3
#define SIGNATURE_QUEUE_SIZE 1700000 	// three 
#endif

#ifdef TH_NUM_4
#define SIGNATURE_QUEUE_SIZE 1300000 	// four 
#endif
#endif




#define CFE_INJECTION_BOUND SIGNATURE_QUEUE_SIZE * 2.7
