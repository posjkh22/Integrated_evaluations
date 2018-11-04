; ModuleID = 'fft.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"overhead.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" [target finished!]\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c" [target] Execution time: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [73 x i8] c">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Error in fft():  NumSamples=%u is not power of two\0A\00", align 1
@.str.1.9 = private unnamed_addr constant [7 x i8] c"RealIn\00", align 1
@.str.2.10 = private unnamed_addr constant [8 x i8] c"RealOut\00", align 1
@.str.3.11 = private unnamed_addr constant [8 x i8] c"ImagOut\00", align 1
@.str.4.12 = private unnamed_addr constant [35 x i8] c"Error in fft_float():  %s == NULL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca %struct.timeval, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %12, align 4
  %16 = call i32 @gettimeofday(%struct.timeval* %13, %struct.timezone* null) #3
  store i32 8, i32* %3, align 4
  store i32 32768, i32* %2, align 4
  call void @srand(i32 1) #3
  %17 = load i32, i32* %2, align 4
  %18 = zext i32 %17 to i64
  %19 = mul i64 4, %18
  %20 = call noalias i8* @malloc(i64 %19) #3
  %21 = bitcast i8* %20 to float*
  store float* %21, float** %6, align 8
  %22 = load i32, i32* %2, align 4
  %23 = zext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = call noalias i8* @malloc(i64 %24) #3
  %26 = bitcast i8* %25 to float*
  store float* %26, float** %7, align 8
  %27 = load i32, i32* %2, align 4
  %28 = zext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = call noalias i8* @malloc(i64 %29) #3
  %31 = bitcast i8* %30 to float*
  store float* %31, float** %8, align 8
  %32 = load i32, i32* %2, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = call noalias i8* @malloc(i64 %34) #3
  %36 = bitcast i8* %35 to float*
  store float* %36, float** %9, align 8
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = mul i64 4, %38
  %40 = call noalias i8* @malloc(i64 %39) #3
  %41 = bitcast i8* %40 to float*
  store float* %41, float** %10, align 8
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = mul i64 4, %43
  %45 = call noalias i8* @malloc(i64 %44) #3
  %46 = bitcast i8* %45 to float*
  store float* %46, float** %11, align 8
  store i32 0, i32* %4, align 4
  br label %47

; <label>:47:                                     ; preds = %66, %0
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %69

; <label>:51:                                     ; preds = %47
  %52 = call i32 @rand() #3
  %53 = srem i32 %52, 1000
  %54 = sitofp i32 %53 to float
  %55 = load float*, float** %10, align 8
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  store float %54, float* %58, align 4
  %59 = call i32 @rand() #3
  %60 = srem i32 %59, 1000
  %61 = sitofp i32 %60 to float
  %62 = load float*, float** %11, align 8
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  store float %61, float* %65, align 4
  br label %66

; <label>:66:                                     ; preds = %51
  %67 = load i32, i32* %4, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %4, align 4
  br label %47

; <label>:69:                                     ; preds = %47
  store i32 0, i32* %4, align 4
  br label %70

; <label>:70:                                     ; preds = %148, %69
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %2, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %151

; <label>:74:                                     ; preds = %70
  %75 = load float*, float** %6, align 8
  %76 = load i32, i32* %4, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds float, float* %75, i64 %77
  store float 0.000000e+00, float* %78, align 4
  store i32 0, i32* %5, align 4
  br label %79

; <label>:79:                                     ; preds = %144, %74
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %3, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %147

; <label>:83:                                     ; preds = %79
  %84 = call i32 @rand() #3
  %85 = srem i32 %84, 2
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %113

; <label>:87:                                     ; preds = %83
  %88 = load float*, float** %10, align 8
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %88, i64 %90
  %92 = load float, float* %91, align 4
  %93 = fpext float %92 to double
  %94 = load float*, float** %11, align 8
  %95 = load i32, i32* %5, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds float, float* %94, i64 %96
  %98 = load float, float* %97, align 4
  %99 = load i32, i32* %4, align 4
  %100 = uitofp i32 %99 to float
  %101 = fmul float %98, %100
  %102 = fpext float %101 to double
  %103 = call double @cos(double %102) #3
  %104 = fmul double %93, %103
  %105 = load float*, float** %6, align 8
  %106 = load i32, i32* %4, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds float, float* %105, i64 %107
  %109 = load float, float* %108, align 4
  %110 = fpext float %109 to double
  %111 = fadd double %110, %104
  %112 = fptrunc double %111 to float
  store float %112, float* %108, align 4
  br label %139

; <label>:113:                                    ; preds = %83
  %114 = load float*, float** %10, align 8
  %115 = load i32, i32* %5, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %114, i64 %116
  %118 = load float, float* %117, align 4
  %119 = fpext float %118 to double
  %120 = load float*, float** %11, align 8
  %121 = load i32, i32* %5, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds float, float* %120, i64 %122
  %124 = load float, float* %123, align 4
  %125 = load i32, i32* %4, align 4
  %126 = uitofp i32 %125 to float
  %127 = fmul float %124, %126
  %128 = fpext float %127 to double
  %129 = call double @sin(double %128) #3
  %130 = fmul double %119, %129
  %131 = load float*, float** %6, align 8
  %132 = load i32, i32* %4, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %131, i64 %133
  %135 = load float, float* %134, align 4
  %136 = fpext float %135 to double
  %137 = fadd double %136, %130
  %138 = fptrunc double %137 to float
  store float %138, float* %134, align 4
  br label %139

; <label>:139:                                    ; preds = %113, %87
  %140 = load float*, float** %7, align 8
  %141 = load i32, i32* %4, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %140, i64 %142
  store float 0.000000e+00, float* %143, align 4
  br label %144

; <label>:144:                                    ; preds = %139
  %145 = load i32, i32* %5, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %79

; <label>:147:                                    ; preds = %79
  br label %148

; <label>:148:                                    ; preds = %147
  %149 = load i32, i32* %4, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %4, align 4
  br label %70

; <label>:151:                                    ; preds = %70
  %152 = load i32, i32* %2, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load float*, float** %6, align 8
  %155 = load float*, float** %7, align 8
  %156 = load float*, float** %8, align 8
  %157 = load float*, float** %9, align 8
  %158 = call i32 (i32, i32, float*, float*, float*, float*, ...) bitcast (void (i32, i32, float*, float*, float*, float*)* @fft_float to i32 (i32, i32, float*, float*, float*, float*, ...)*)(i32 %152, i32 %153, float* %154, float* %155, float* %156, float* %157)
  %159 = load float*, float** %6, align 8
  %160 = bitcast float* %159 to i8*
  call void @free(i8* %160) #3
  %161 = load float*, float** %7, align 8
  %162 = bitcast float* %161 to i8*
  call void @free(i8* %162) #3
  %163 = load float*, float** %8, align 8
  %164 = bitcast float* %163 to i8*
  call void @free(i8* %164) #3
  %165 = load float*, float** %9, align 8
  %166 = bitcast float* %165 to i8*
  call void @free(i8* %166) #3
  %167 = load float*, float** %10, align 8
  %168 = bitcast float* %167 to i8*
  call void @free(i8* %168) #3
  %169 = load float*, float** %11, align 8
  %170 = bitcast float* %169 to i8*
  call void @free(i8* %170) #3
  %171 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %171, %struct._IO_FILE** %14, align 8
  %172 = call i32 @gettimeofday(%struct.timeval* %15, %struct.timezone* null) #3
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  %174 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = sub nsw i64 %175, %177
  %179 = mul nsw i64 %178, 1000000
  %180 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %181, %183
  %185 = add nsw i64 %179, %184
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i64 %185)
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %188 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = sub nsw i64 %189, %191
  %193 = mul nsw i64 %192, 1000000
  %194 = getelementptr inbounds %struct.timeval, %struct.timeval* %15, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = sub nsw i64 %195, %197
  %199 = add nsw i64 %193, %198
  %200 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i64 %199)
  %201 = load i32, i32* %1, align 4
  ret i32 %201
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind
declare void @free(i8*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @printf(i8*, ...) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @IsPowerOfTwo(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sub i32 %9, 1
  %11 = and i32 %8, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %7
  store i32 0, i32* %2, align 4
  br label %15

; <label>:14:                                     ; preds = %7
  store i32 1, i32* %2, align 4
  br label %15

; <label>:15:                                     ; preds = %14, %13, %6
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @NumberOfBitsNeeded(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %6, label %10

; <label>:6:                                      ; preds = %1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i32 0, i32 0), i32 %8)
  br label %10

; <label>:10:                                     ; preds = %6, %1
  store i32 0, i32* %3, align 4
  br label %11

; <label>:11:                                     ; preds = %20, %10
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %11
  %18 = load i32, i32* %3, align 4
  ret i32 %18

; <label>:19:                                     ; preds = %11
  br label %20

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %11
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @ReverseBits(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

; <label>:7:                                      ; preds = %19, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %22

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, 1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 1
  %16 = or i32 %13, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = lshr i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %19

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %7

; <label>:22:                                     ; preds = %7
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define double @Index_to_frequency(i32, i32) #0 {
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  store double 0.000000e+00, double* %3, align 8
  br label %31

; <label>:10:                                     ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = udiv i32 %12, 2
  %14 = icmp ule i32 %11, %13
  br i1 %14, label %15, label %21

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = uitofp i32 %16 to double
  %18 = load i32, i32* %4, align 4
  %19 = uitofp i32 %18 to double
  %20 = fdiv double %17, %19
  store double %20, double* %3, align 8
  br label %31

; <label>:21:                                     ; preds = %10
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sub i32 %23, %24
  %26 = uitofp i32 %25 to double
  %27 = fsub double -0.000000e+00, %26
  %28 = load i32, i32* %4, align 4
  %29 = uitofp i32 %28 to double
  %30 = fdiv double %27, %29
  store double %30, double* %3, align 8
  br label %31

; <label>:31:                                     ; preds = %22, %15, %9
  %32 = load double, double* %3, align 8
  ret double %32
}

; Function Attrs: noinline nounwind optnone uwtable
define void @fft_float(i32, i32, float*, float*, float*, float*) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca double, align 8
  %27 = alloca double, align 8
  %28 = alloca double, align 8
  %29 = alloca [3 x double], align 16
  %30 = alloca [3 x double], align 16
  %31 = alloca double, align 8
  %32 = alloca double, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  store double 0x401921FB54442D18, double* %20, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @IsPowerOfTwo(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

; <label>:36:                                     ; preds = %6
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0), i32 %38)
  br label %40

; <label>:40:                                     ; preds = %36, %6
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %40
  %44 = load double, double* %20, align 8
  %45 = fsub double -0.000000e+00, %44
  store double %45, double* %20, align 8
  br label %46

; <label>:46:                                     ; preds = %43, %40
  %47 = load float*, float** %9, align 8
  %48 = bitcast float* %47 to i8*
  call void @CheckPointer(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.9, i32 0, i32 0))
  %49 = load float*, float** %11, align 8
  %50 = bitcast float* %49 to i8*
  call void @CheckPointer(i8* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.10, i32 0, i32 0))
  %51 = load float*, float** %12, align 8
  %52 = bitcast float* %51 to i8*
  call void @CheckPointer(i8* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.11, i32 0, i32 0))
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @NumberOfBitsNeeded(i32 %53)
  store i32 %54, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %55

; <label>:55:                                     ; preds = %89, %46
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %92

; <label>:59:                                     ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @ReverseBits(i32 %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load float*, float** %9, align 8
  %64 = load i32, i32* %14, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds float, float* %63, i64 %65
  %67 = load float, float* %66, align 4
  %68 = load float*, float** %11, align 8
  %69 = load i32, i32* %15, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds float, float* %68, i64 %70
  store float %67, float* %71, align 4
  %72 = load float*, float** %10, align 8
  %73 = icmp eq float* %72, null
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %59
  br label %82

; <label>:75:                                     ; preds = %59
  %76 = load float*, float** %10, align 8
  %77 = load i32, i32* %14, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %76, i64 %78
  %80 = load float, float* %79, align 4
  %81 = fpext float %80 to double
  br label %82

; <label>:82:                                     ; preds = %75, %74
  %83 = phi double [ 0.000000e+00, %74 ], [ %81, %75 ]
  %84 = fptrunc double %83 to float
  %85 = load float*, float** %12, align 8
  %86 = load i32, i32* %15, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds float, float* %85, i64 %87
  store float %84, float* %88, align 4
  br label %89

; <label>:89:                                     ; preds = %82
  %90 = load i32, i32* %14, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %55

; <label>:92:                                     ; preds = %55
  store i32 1, i32* %19, align 4
  store i32 2, i32* %18, align 4
  br label %93

; <label>:93:                                     ; preds = %260, %92
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ule i32 %94, %95
  br i1 %96, label %97, label %263

; <label>:97:                                     ; preds = %93
  %98 = load double, double* %20, align 8
  %99 = load i32, i32* %18, align 4
  %100 = uitofp i32 %99 to double
  %101 = fdiv double %98, %100
  store double %101, double* %23, align 8
  %102 = load double, double* %23, align 8
  %103 = fmul double -2.000000e+00, %102
  %104 = call double @sin(double %103) #3
  store double %104, double* %24, align 8
  %105 = load double, double* %23, align 8
  %106 = fsub double -0.000000e+00, %105
  %107 = call double @sin(double %106) #3
  store double %107, double* %25, align 8
  %108 = load double, double* %23, align 8
  %109 = fmul double -2.000000e+00, %108
  %110 = call double @cos(double %109) #3
  store double %110, double* %26, align 8
  %111 = load double, double* %23, align 8
  %112 = fsub double -0.000000e+00, %111
  %113 = call double @cos(double %112) #3
  store double %113, double* %27, align 8
  %114 = load double, double* %27, align 8
  %115 = fmul double 2.000000e+00, %114
  store double %115, double* %28, align 8
  store i32 0, i32* %14, align 4
  br label %116

; <label>:116:                                    ; preds = %254, %97
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %120, label %258

; <label>:120:                                    ; preds = %116
  %121 = load double, double* %26, align 8
  %122 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  store double %121, double* %122, align 16
  %123 = load double, double* %27, align 8
  %124 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  store double %123, double* %124, align 8
  %125 = load double, double* %24, align 8
  %126 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  store double %125, double* %126, align 16
  %127 = load double, double* %25, align 8
  %128 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  store double %127, double* %128, align 8
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %130

; <label>:130:                                    ; preds = %248, %120
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %19, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %253

; <label>:134:                                    ; preds = %130
  %135 = load double, double* %28, align 8
  %136 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  %137 = load double, double* %136, align 8
  %138 = fmul double %135, %137
  %139 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  %140 = load double, double* %139, align 16
  %141 = fsub double %138, %140
  %142 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  store double %141, double* %142, align 16
  %143 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  %144 = load double, double* %143, align 8
  %145 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 2
  store double %144, double* %145, align 16
  %146 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %147 = load double, double* %146, align 16
  %148 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 1
  store double %147, double* %148, align 8
  %149 = load double, double* %28, align 8
  %150 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  %151 = load double, double* %150, align 8
  %152 = fmul double %149, %151
  %153 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  %154 = load double, double* %153, align 16
  %155 = fsub double %152, %154
  %156 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  store double %155, double* %156, align 16
  %157 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  %158 = load double, double* %157, align 8
  %159 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 2
  store double %158, double* %159, align 16
  %160 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %161 = load double, double* %160, align 16
  %162 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 1
  store double %161, double* %162, align 8
  %163 = load i32, i32* %15, align 4
  %164 = load i32, i32* %19, align 4
  %165 = add i32 %163, %164
  store i32 %165, i32* %16, align 4
  %166 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %167 = load double, double* %166, align 16
  %168 = load float*, float** %11, align 8
  %169 = load i32, i32* %16, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %168, i64 %170
  %172 = load float, float* %171, align 4
  %173 = fpext float %172 to double
  %174 = fmul double %167, %173
  %175 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %176 = load double, double* %175, align 16
  %177 = load float*, float** %12, align 8
  %178 = load i32, i32* %16, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds float, float* %177, i64 %179
  %181 = load float, float* %180, align 4
  %182 = fpext float %181 to double
  %183 = fmul double %176, %182
  %184 = fsub double %174, %183
  store double %184, double* %21, align 8
  %185 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 0, i64 0
  %186 = load double, double* %185, align 16
  %187 = load float*, float** %12, align 8
  %188 = load i32, i32* %16, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  %191 = load float, float* %190, align 4
  %192 = fpext float %191 to double
  %193 = fmul double %186, %192
  %194 = getelementptr inbounds [3 x double], [3 x double]* %30, i64 0, i64 0
  %195 = load double, double* %194, align 16
  %196 = load float*, float** %11, align 8
  %197 = load i32, i32* %16, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %196, i64 %198
  %200 = load float, float* %199, align 4
  %201 = fpext float %200 to double
  %202 = fmul double %195, %201
  %203 = fadd double %193, %202
  store double %203, double* %22, align 8
  %204 = load float*, float** %11, align 8
  %205 = load i32, i32* %15, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %204, i64 %206
  %208 = load float, float* %207, align 4
  %209 = fpext float %208 to double
  %210 = load double, double* %21, align 8
  %211 = fsub double %209, %210
  %212 = fptrunc double %211 to float
  %213 = load float*, float** %11, align 8
  %214 = load i32, i32* %16, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds float, float* %213, i64 %215
  store float %212, float* %216, align 4
  %217 = load float*, float** %12, align 8
  %218 = load i32, i32* %15, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds float, float* %217, i64 %219
  %221 = load float, float* %220, align 4
  %222 = fpext float %221 to double
  %223 = load double, double* %22, align 8
  %224 = fsub double %222, %223
  %225 = fptrunc double %224 to float
  %226 = load float*, float** %12, align 8
  %227 = load i32, i32* %16, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %226, i64 %228
  store float %225, float* %229, align 4
  %230 = load double, double* %21, align 8
  %231 = load float*, float** %11, align 8
  %232 = load i32, i32* %15, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds float, float* %231, i64 %233
  %235 = load float, float* %234, align 4
  %236 = fpext float %235 to double
  %237 = fadd double %236, %230
  %238 = fptrunc double %237 to float
  store float %238, float* %234, align 4
  %239 = load double, double* %22, align 8
  %240 = load float*, float** %12, align 8
  %241 = load i32, i32* %15, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %240, i64 %242
  %244 = load float, float* %243, align 4
  %245 = fpext float %244 to double
  %246 = fadd double %245, %239
  %247 = fptrunc double %246 to float
  store float %247, float* %243, align 4
  br label %248

; <label>:248:                                    ; preds = %134
  %249 = load i32, i32* %15, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %15, align 4
  %251 = load i32, i32* %17, align 4
  %252 = add i32 %251, 1
  store i32 %252, i32* %17, align 4
  br label %130

; <label>:253:                                    ; preds = %130
  br label %254

; <label>:254:                                    ; preds = %253
  %255 = load i32, i32* %18, align 4
  %256 = load i32, i32* %14, align 4
  %257 = add i32 %256, %255
  store i32 %257, i32* %14, align 4
  br label %116

; <label>:258:                                    ; preds = %116
  %259 = load i32, i32* %18, align 4
  store i32 %259, i32* %19, align 4
  br label %260

; <label>:260:                                    ; preds = %258
  %261 = load i32, i32* %18, align 4
  %262 = shl i32 %261, 1
  store i32 %262, i32* %18, align 4
  br label %93

; <label>:263:                                    ; preds = %93
  %264 = load i32, i32* %8, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %296

; <label>:266:                                    ; preds = %263
  %267 = load i32, i32* %7, align 4
  %268 = uitofp i32 %267 to double
  store double %268, double* %32, align 8
  store i32 0, i32* %14, align 4
  br label %269

; <label>:269:                                    ; preds = %292, %266
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* %7, align 4
  %272 = icmp ult i32 %270, %271
  br i1 %272, label %273, label %295

; <label>:273:                                    ; preds = %269
  %274 = load double, double* %32, align 8
  %275 = load float*, float** %11, align 8
  %276 = load i32, i32* %14, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds float, float* %275, i64 %277
  %279 = load float, float* %278, align 4
  %280 = fpext float %279 to double
  %281 = fdiv double %280, %274
  %282 = fptrunc double %281 to float
  store float %282, float* %278, align 4
  %283 = load double, double* %32, align 8
  %284 = load float*, float** %12, align 8
  %285 = load i32, i32* %14, align 4
  %286 = zext i32 %285 to i64
  %287 = getelementptr inbounds float, float* %284, i64 %286
  %288 = load float, float* %287, align 4
  %289 = fpext float %288 to double
  %290 = fdiv double %289, %283
  %291 = fptrunc double %290 to float
  store float %291, float* %287, align 4
  br label %292

; <label>:292:                                    ; preds = %273
  %293 = load i32, i32* %14, align 4
  %294 = add i32 %293, 1
  store i32 %294, i32* %14, align 4
  br label %269

; <label>:295:                                    ; preds = %269
  br label %296

; <label>:296:                                    ; preds = %295, %263
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CheckPointer(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %11

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4.12, i32 0, i32 0), i8* %9)
  br label %11

; <label>:11:                                     ; preds = %7, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
