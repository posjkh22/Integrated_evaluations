; ModuleID = 'dhrystone.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.record = type { %struct.record*, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32, [31 x i8] }
%struct.timeval = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@Reg = global i32 0, align 4
@Next_Ptr_Glob = common global %struct.record* null, align 8
@Ptr_Glob = common global %struct.record* null, align 8
@Arr_2_Glob = common global [50 x [50 x i32]] zeroinitializer, align 16
@Bool_Glob = common global i32 0, align 4
@Arr_1_Glob = common global [50 x i32] zeroinitializer, align 16
@Ch_2_Glob = common global i8 0, align 1
@Int_Glob = common global i32 0, align 4
@End_Time = common global i64 0, align 8
@Begin_Time = common global i64 0, align 8
@User_Time = common global i64 0, align 8
@Microseconds = common global float 0.000000e+00, align 4
@Dhrystones_Per_Second = common global float 0.000000e+00, align 4
@Ch_1_Glob = common global i8 0, align 1
@.str = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, SOME STRING\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 1'ST STRING\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 2'ND STRING\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"DHRYSTONE PROGRAM, 3'RD STRING\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"overhead.txt\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c" [target finished!]\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c" [target] Execution time: %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca [31 x i8], align 16
  %8 = alloca [31 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %1, align 4
  %15 = call i32 (%struct.timeval*, i8*, ...) bitcast (i32 (...)* @gettimeofday to i32 (%struct.timeval*, i8*, ...)*)(%struct.timeval* %11, i8* null)
  %16 = call i8* (i64, ...) bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 56)
  %17 = bitcast i8* %16 to %struct.record*
  store %struct.record* %17, %struct.record** @Next_Ptr_Glob, align 8
  %18 = call i8* (i64, ...) bitcast (i8* (...)* @malloc to i8* (i64, ...)*)(i64 56)
  %19 = bitcast i8* %18 to %struct.record*
  store %struct.record* %19, %struct.record** @Ptr_Glob, align 8
  %20 = load %struct.record*, %struct.record** @Next_Ptr_Glob, align 8
  %21 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %22 = getelementptr inbounds %struct.record, %struct.record* %21, i32 0, i32 0
  store %struct.record* %20, %struct.record** %22, align 8
  %23 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %24 = getelementptr inbounds %struct.record, %struct.record* %23, i32 0, i32 1
  store i32 0, i32* %24, align 8
  %25 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %26 = getelementptr inbounds %struct.record, %struct.record* %25, i32 0, i32 2
  %27 = bitcast %union.anon* %26 to %struct.anon*
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 0
  store i32 2, i32* %28, align 4
  %29 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %30 = getelementptr inbounds %struct.record, %struct.record* %29, i32 0, i32 2
  %31 = bitcast %union.anon* %30 to %struct.anon*
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 1
  store i32 40, i32* %32, align 4
  %33 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %34 = getelementptr inbounds %struct.record, %struct.record* %33, i32 0, i32 2
  %35 = bitcast %union.anon* %34 to %struct.anon*
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 2
  %37 = getelementptr inbounds [31 x i8], [31 x i8]* %36, i32 0, i32 0
  %38 = call i8* @strcpy(i8* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0))
  %39 = getelementptr inbounds [31 x i8], [31 x i8]* %7, i32 0, i32 0
  %40 = call i8* @strcpy(i8* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0))
  store i32 10, i32* getelementptr inbounds ([50 x [50 x i32]], [50 x [50 x i32]]* @Arr_2_Glob, i64 0, i64 8, i64 7), align 4
  %41 = load i32, i32* @Reg, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %0
  br label %45

; <label>:44:                                     ; preds = %0
  br label %45

; <label>:45:                                     ; preds = %44, %43
  store i32 1000, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %47

; <label>:47:                                     ; preds = %118, %45
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp sle i32 %48, %49
  br i1 %50, label %51, label %121

; <label>:51:                                     ; preds = %47
  %52 = call i32 @Proc_5()
  %53 = call i32 @Proc_4()
  store i32 2, i32* %2, align 4
  store i32 3, i32* %3, align 4
  %54 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  %55 = call i8* @strcpy(i8* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store i32 1, i32* %6, align 4
  %56 = getelementptr inbounds [31 x i8], [31 x i8]* %7, i32 0, i32 0
  %57 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  %58 = call i32 (i8*, i8*, ...) bitcast (i32 (i8*, i8*)* @Func_2 to i32 (i8*, i8*, ...)*)(i8* %56, i8* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* @Bool_Glob, align 4
  br label %62

; <label>:62:                                     ; preds = %66, %51
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %76

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* %2, align 4
  %68 = mul nsw i32 5, %67
  %69 = load i32, i32* %3, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %2, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 (i32, i32, i32*, ...) bitcast (i32 (i32, i32, i32*)* @Proc_7 to i32 (i32, i32, i32*, ...)*)(i32 %71, i32 %72, i32* %4)
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %2, align 4
  br label %62

; <label>:76:                                     ; preds = %62
  %77 = load i32, i32* %2, align 4
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (i32*, [50 x i32]*, i32, i32, ...) bitcast (i32 (i32*, [50 x i32]*, i32, i32)* @Proc_8 to i32 (i32*, [50 x i32]*, i32, i32, ...)*)(i32* getelementptr inbounds ([50 x i32], [50 x i32]* @Arr_1_Glob, i32 0, i32 0), [50 x i32]* getelementptr inbounds ([50 x [50 x i32]], [50 x [50 x i32]]* @Arr_2_Glob, i32 0, i32 0), i32 %77, i32 %78)
  %80 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %81 = call i32 @Proc_1(%struct.record* %80)
  store i8 65, i8* %5, align 1
  br label %82

; <label>:82:                                     ; preds = %101, %76
  %83 = load i8, i8* %5, align 1
  %84 = sext i8 %83 to i32
  %85 = load i8, i8* @Ch_2_Glob, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp sle i32 %84, %86
  br i1 %87, label %88, label %104

; <label>:88:                                     ; preds = %82
  %89 = load i32, i32* %6, align 4
  %90 = load i8, i8* %5, align 1
  %91 = sext i8 %90 to i32
  %92 = call i32 (i32, i32, ...) bitcast (i32 (i32, i32)* @Func_1 to i32 (i32, i32, ...)*)(i32 %91, i32 67)
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %100

; <label>:94:                                     ; preds = %88
  %95 = call i32 (i32, i32*, ...) bitcast (i32 (i32, i32*)* @Proc_6 to i32 (i32, i32*, ...)*)(i32 0, i32* %6)
  %96 = getelementptr inbounds [31 x i8], [31 x i8]* %8, i32 0, i32 0
  %97 = call i8* @strcpy(i8* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0))
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* @Int_Glob, align 4
  br label %100

; <label>:100:                                    ; preds = %94, %88
  br label %101

; <label>:101:                                    ; preds = %100
  %102 = load i8, i8* %5, align 1
  %103 = add i8 %102, 1
  store i8 %103, i8* %5, align 1
  br label %82

; <label>:104:                                    ; preds = %82
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %2, align 4
  %107 = mul nsw i32 %105, %106
  store i32 %107, i32* %3, align 4
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* %4, align 4
  %110 = sdiv i32 %108, %109
  store i32 %110, i32* %2, align 4
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* %4, align 4
  %113 = sub nsw i32 %111, %112
  %114 = mul nsw i32 7, %113
  %115 = load i32, i32* %2, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %3, align 4
  %117 = call i32 @Proc_2(i32* %2)
  br label %118

; <label>:118:                                    ; preds = %104
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %47

; <label>:121:                                    ; preds = %47
  %122 = load i64, i64* @End_Time, align 8
  %123 = load i64, i64* @Begin_Time, align 8
  %124 = sub nsw i64 %122, %123
  store i64 %124, i64* @User_Time, align 8
  %125 = load i64, i64* @User_Time, align 8
  %126 = icmp slt i64 %125, 1000
  br i1 %126, label %127, label %128

; <label>:127:                                    ; preds = %121
  br label %145

; <label>:128:                                    ; preds = %121
  %129 = load i64, i64* @User_Time, align 8
  %130 = sitofp i64 %129 to float
  %131 = fpext float %130 to double
  %132 = fmul double %131, 1.000000e+06
  %133 = load i32, i32* %10, align 4
  %134 = sitofp i32 %133 to float
  %135 = fmul float 5.000000e+02, %134
  %136 = fpext float %135 to double
  %137 = fdiv double %132, %136
  %138 = fptrunc double %137 to float
  store float %138, float* @Microseconds, align 4
  %139 = load i32, i32* %10, align 4
  %140 = sitofp i32 %139 to float
  %141 = fmul float 5.000000e+02, %140
  %142 = load i64, i64* @User_Time, align 8
  %143 = sitofp i64 %142 to float
  %144 = fdiv float %141, %143
  store float %144, float* @Dhrystones_Per_Second, align 4
  br label %145

; <label>:145:                                    ; preds = %128, %127
  %146 = call i32 (%struct.timeval*, i8*, ...) bitcast (i32 (...)* @gettimeofday to i32 (%struct.timeval*, i8*, ...)*)(%struct.timeval* %13, i8* null)
  %147 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %147, %struct._IO_FILE** %14, align 8
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0))
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %150, %152
  %154 = mul nsw i64 %153, 1000000
  %155 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %156, %158
  %160 = add nsw i64 %154, %159
  %161 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i64 %160)
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8
  %163 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = sub nsw i64 %164, %166
  %168 = mul nsw i64 %167, 1000000
  %169 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 %170, %172
  %174 = add nsw i64 %168, %173
  %175 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i64 %174)
  %176 = load i32, i32* %1, align 4
  ret i32 %176
}

declare i32 @gettimeofday(...) #1

declare i8* @malloc(...) #1

declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_5() #0 {
  %1 = alloca i32, align 4
  store i8 65, i8* @Ch_1_Glob, align 1
  store i32 0, i32* @Bool_Glob, align 4
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_4() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i8, i8* @Ch_1_Glob, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 65
  %6 = zext i1 %5 to i32
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @Bool_Glob, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* @Bool_Glob, align 4
  store i8 66, i8* @Ch_2_Glob, align 1
  %10 = load i32, i32* %1, align 4
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_1(%struct.record*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.record*, align 8
  %4 = alloca %struct.record*, align 8
  store %struct.record* %0, %struct.record** %3, align 8
  %5 = load %struct.record*, %struct.record** %3, align 8
  %6 = getelementptr inbounds %struct.record, %struct.record* %5, i32 0, i32 0
  %7 = load %struct.record*, %struct.record** %6, align 8
  store %struct.record* %7, %struct.record** %4, align 8
  %8 = load %struct.record*, %struct.record** %3, align 8
  %9 = getelementptr inbounds %struct.record, %struct.record* %8, i32 0, i32 0
  %10 = load %struct.record*, %struct.record** %9, align 8
  %11 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %12 = bitcast %struct.record* %10 to i8*
  %13 = bitcast %struct.record* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 56, i32 8, i1 false)
  %14 = load %struct.record*, %struct.record** %3, align 8
  %15 = getelementptr inbounds %struct.record, %struct.record* %14, i32 0, i32 2
  %16 = bitcast %union.anon* %15 to %struct.anon*
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 1
  store i32 5, i32* %17, align 4
  %18 = load %struct.record*, %struct.record** %3, align 8
  %19 = getelementptr inbounds %struct.record, %struct.record* %18, i32 0, i32 2
  %20 = bitcast %union.anon* %19 to %struct.anon*
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.record*, %struct.record** %4, align 8
  %24 = getelementptr inbounds %struct.record, %struct.record* %23, i32 0, i32 2
  %25 = bitcast %union.anon* %24 to %struct.anon*
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.record*, %struct.record** %3, align 8
  %28 = getelementptr inbounds %struct.record, %struct.record* %27, i32 0, i32 0
  %29 = load %struct.record*, %struct.record** %28, align 8
  %30 = load %struct.record*, %struct.record** %4, align 8
  %31 = getelementptr inbounds %struct.record, %struct.record* %30, i32 0, i32 0
  store %struct.record* %29, %struct.record** %31, align 8
  %32 = load %struct.record*, %struct.record** %4, align 8
  %33 = getelementptr inbounds %struct.record, %struct.record* %32, i32 0, i32 0
  %34 = call i32 @Proc_3(%struct.record** %33)
  %35 = load %struct.record*, %struct.record** %4, align 8
  %36 = getelementptr inbounds %struct.record, %struct.record* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %69

; <label>:39:                                     ; preds = %1
  %40 = load %struct.record*, %struct.record** %4, align 8
  %41 = getelementptr inbounds %struct.record, %struct.record* %40, i32 0, i32 2
  %42 = bitcast %union.anon* %41 to %struct.anon*
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 1
  store i32 6, i32* %43, align 4
  %44 = load %struct.record*, %struct.record** %3, align 8
  %45 = getelementptr inbounds %struct.record, %struct.record* %44, i32 0, i32 2
  %46 = bitcast %union.anon* %45 to %struct.anon*
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.record*, %struct.record** %4, align 8
  %50 = getelementptr inbounds %struct.record, %struct.record* %49, i32 0, i32 2
  %51 = bitcast %union.anon* %50 to %struct.anon*
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 0
  %53 = call i32 (i32, i32*, ...) bitcast (i32 (i32, i32*)* @Proc_6 to i32 (i32, i32*, ...)*)(i32 %48, i32* %52)
  %54 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %55 = getelementptr inbounds %struct.record, %struct.record* %54, i32 0, i32 0
  %56 = load %struct.record*, %struct.record** %55, align 8
  %57 = load %struct.record*, %struct.record** %4, align 8
  %58 = getelementptr inbounds %struct.record, %struct.record* %57, i32 0, i32 0
  store %struct.record* %56, %struct.record** %58, align 8
  %59 = load %struct.record*, %struct.record** %4, align 8
  %60 = getelementptr inbounds %struct.record, %struct.record* %59, i32 0, i32 2
  %61 = bitcast %union.anon* %60 to %struct.anon*
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.record*, %struct.record** %4, align 8
  %65 = getelementptr inbounds %struct.record, %struct.record* %64, i32 0, i32 2
  %66 = bitcast %union.anon* %65 to %struct.anon*
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 1
  %68 = call i32 (i32, i32, i32*, ...) bitcast (i32 (i32, i32, i32*)* @Proc_7 to i32 (i32, i32, i32*, ...)*)(i32 %63, i32 10, i32* %67)
  br label %76

; <label>:69:                                     ; preds = %1
  %70 = load %struct.record*, %struct.record** %3, align 8
  %71 = load %struct.record*, %struct.record** %3, align 8
  %72 = getelementptr inbounds %struct.record, %struct.record* %71, i32 0, i32 0
  %73 = load %struct.record*, %struct.record** %72, align 8
  %74 = bitcast %struct.record* %70 to i8*
  %75 = bitcast %struct.record* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %75, i64 56, i32 8, i1 false)
  br label %76

; <label>:76:                                     ; preds = %69, %39
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_2(i32*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 10
  store i32 %8, i32* %4, align 4
  br label %9

; <label>:9:                                      ; preds = %21, %1
  %10 = load i8, i8* @Ch_1_Glob, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 65
  br i1 %12, label %13, label %20

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @Int_Glob, align 4
  %18 = sub nsw i32 %16, %17
  %19 = load i32*, i32** %3, align 8
  store i32 %18, i32* %19, align 4
  store i32 0, i32* %5, align 4
  br label %20

; <label>:20:                                     ; preds = %13, %9
  br label %21

; <label>:21:                                     ; preds = %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %9, label %24

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_3(%struct.record**) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.record**, align 8
  store %struct.record** %0, %struct.record*** %3, align 8
  %4 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %5 = icmp ne %struct.record* %4, null
  br i1 %5, label %6, label %11

; <label>:6:                                      ; preds = %1
  %7 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %8 = getelementptr inbounds %struct.record, %struct.record* %7, i32 0, i32 0
  %9 = load %struct.record*, %struct.record** %8, align 8
  %10 = load %struct.record**, %struct.record*** %3, align 8
  store %struct.record* %9, %struct.record** %10, align 8
  br label %11

; <label>:11:                                     ; preds = %6, %1
  %12 = load i32, i32* @Int_Glob, align 4
  %13 = load %struct.record*, %struct.record** @Ptr_Glob, align 8
  %14 = getelementptr inbounds %struct.record, %struct.record* %13, i32 0, i32 2
  %15 = bitcast %union.anon* %14 to %struct.anon*
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 1
  %17 = call i32 (i32, i32, i32*, ...) bitcast (i32 (i32, i32, i32*)* @Proc_7 to i32 (i32, i32, i32*, ...)*)(i32 10, i32 %12, i32* %16)
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_6(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32*, i32** %5, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @Func_3(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

; <label>:11:                                     ; preds = %2
  %12 = load i32*, i32** %5, align 8
  store i32 3, i32* %12, align 4
  br label %13

; <label>:13:                                     ; preds = %11, %2
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Func_3(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  store i32 1, i32* %2, align 4
  br label %10

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %10

; <label>:10:                                     ; preds = %9, %8
  %11 = load i32, i32* %2, align 4
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_7(i32, i32, i32*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 2
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Proc_8(i32*, [50 x i32]*, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [50 x i32]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store [50 x i32]* %1, [50 x i32]** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = add nsw i32 %12, 5
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %11, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 %14, i32* %18, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %23, i32* %28, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 30
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %10, align 4
  br label %36

; <label>:36:                                     ; preds = %50, %4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  %40 = icmp sle i32 %37, %39
  br i1 %40, label %41, label %53

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = load [50 x i32]*, [50 x i32]** %7, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [50 x i32], [50 x i32]* %43, i64 %45
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [50 x i32], [50 x i32]* %46, i64 0, i64 %48
  store i32 %42, i32* %49, align 4
  br label %50

; <label>:50:                                     ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %36

; <label>:53:                                     ; preds = %36
  %54 = load [50 x i32]*, [50 x i32]** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [50 x i32], [50 x i32]* %54, i64 %56
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [50 x i32], [50 x i32]* %57, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load [50 x i32]*, [50 x i32]** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 20
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [50 x i32], [50 x i32]* %69, i64 %72
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [50 x i32], [50 x i32]* %73, i64 0, i64 %75
  store i32 %68, i32* %76, align 4
  store i32 5, i32* @Int_Glob, align 4
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Func_1(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = trunc i32 %0 to i8
  %9 = trunc i32 %1 to i8
  store i8 %8, i8* %4, align 1
  store i8 %9, i8* %5, align 1
  %10 = load i8, i8* %4, align 1
  store i8 %10, i8* %6, align 1
  %11 = load i8, i8* %6, align 1
  store i8 %11, i8* %7, align 1
  %12 = load i8, i8* %7, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* %5, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

; <label>:18:                                     ; preds = %2
  %19 = load i8, i8* %6, align 1
  store i8 %19, i8* @Ch_1_Glob, align 1
  store i32 1, i32* %3, align 4
  br label %20

; <label>:20:                                     ; preds = %18, %17
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @Func_2(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 2, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %30, %2
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %9, 2
  br i1 %10, label %11, label %31

; <label>:11:                                     ; preds = %8
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 @Func_1(i32 %17, i32 %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %11
  store i8 65, i8* %7, align 1
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %30

; <label>:30:                                     ; preds = %27, %11
  br label %8

; <label>:31:                                     ; preds = %8
  %32 = load i8, i8* %7, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sge i32 %33, 87
  br i1 %34, label %35, label %40

; <label>:35:                                     ; preds = %31
  %36 = load i8, i8* %7, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp slt i32 %37, 90
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %35
  store i32 7, i32* %6, align 4
  br label %40

; <label>:40:                                     ; preds = %39, %35, %31
  %41 = load i8, i8* %7, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 82
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %40
  store i32 1, i32* %3, align 4
  br label %55

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @strcmp(i8* %46, i8* %47)
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %54

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 7
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* @Int_Glob, align 4
  store i32 1, i32* %3, align 4
  br label %55

; <label>:54:                                     ; preds = %45
  store i32 0, i32* %3, align 4
  br label %55

; <label>:55:                                     ; preds = %54, %50, %44
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
