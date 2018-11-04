#! /bin/sh

CORE="./RuntimeChecker"

BENCH_MARK="$1"
NUM_THREAD="$2"
GENERATOR_TARGET="$1_$2"
BENCH_MARK_FOLDER="./benchmarks/$1"
OUTPUT="./outputs"
GENERATOR="./generator"
FINAL_OUTPUT="./final_output"

NUMBER_OF_BASICBLOCKS="./numberofbasicblocks"

echo_start="\033[1;36m"
echo_end="\033[0m"

benchmark_setup="[Setup-1] BenchMark Set-up.."
number_of_bb="[Setup-2] Number of BasicBlocks: "

step0="[STEP-0] Delete old files.."
step1="[STEP-3] Code translation & Monitor code generation.."
step2="[STEP-4] Generate control-flow error detectable binary.."
step3="[STEP-5] Analyze final_output_binary.."
finish="[FINISH]"
run="[RUN] Translated benchmark is now starting.."



if [ $# -lt 2 ]; then
echo "./run --benchmark=[name] --nthread=[num_thread]"



elif [ $# -eq 2 ]; then
echo
echo $echo_start"[Benchmark \& evaluation Info]"$echo_end
echo
echo "Benchmark: $BENCH_MARK"
echo "Benchmark folder: $BENCH_MARK_FOLDER"
echo "Number of thread: $NUM_THREAD"

# STEP-0 #
echo
echo $echo_start"$step0"$echo_end
echo
echo "[1] delete benchmark: $BENCH_MARK_FOLDER"
make -C $BENCH_MARK_FOLDER clean
echo "[2] delete generator: $GENERATOR"
make -C $GENERATOR clean 
echo "[3] delete final_output: $FINAL_OUTPUT"
make -C $FINAL_OUTPUT clean


# BENCHMARK SET-UP #
echo
echo $echo_start"$benchmark_setup"$echo_end
echo
make -C $BENCH_MARK_FOLDER


# NUMBER OF BasicBlock #
echo
echo $echo_start"$number_of_bb"$echo_end
echo
make -C $NUMBER_OF_BASICBLOCKS "run_$1"


# STEP-1 #

echo
echo $echo_start"$step1"$echo_end
$CORE $BENCH_MARK_FOLDER/$BENCH_MARK.bc
llvm-dis $OUTPUT/translated.bc
rm -f CoarseAnalysisForFunctionConnection DebugProcessedModule


# STEP-2 #

echo
echo $echo_start"$step2"$echo_end
echo
make -C $GENERATOR $GENERATOR_TARGET

# STEP-3 #

echo
echo $echo_start"$step3"$echo_end
echo
make -C $FINAL_OUTPUT

# FINISH #

echo
echo $echo_start"$finish"$echo_end
echo

# RUN $
echo
echo $echo_start"$run"$echo_end
echo
$BENCH_MARK_FOLDER/$BENCH_MARK
$FINAL_OUTPUT/final_output_binary



elif [ $1 = "clean" ]; then

# STEP-0 #
echo
echo $echo_start$step0$echo_end
echo
make -C $BENCH_MARK_FOLDER clean
make -C $GENERATOR clean 
rm -f CoarseAnalysisForFunctionConnection DebugProcessedModule


fi

