; ModuleID = 'whetstone.bc'
source_filename = "whetstone.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timezone = type { i32, i32 }

@T = common global double 0.000000e+00, align 8
@T1 = common global double 0.000000e+00, align 8
@T2 = common global double 0.000000e+00, align 8
@E1 = common global [5 x double] zeroinitializer, align 16
@J = common global i32 0, align 4
@K = common global i32 0, align 4
@L = common global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"overhead.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c" [target has finished!]\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" [target] %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca float, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.timeval, align 8
  %29 = alloca %struct._IO_FILE*, align 8
  %30 = alloca %struct.timeval, align 8
  store i32 0, i32* %1, align 4
  store i64 100, i64* %23, align 8
  store i32 0, i32* %27, align 4
  %31 = call i32 @gettimeofday(%struct.timeval* %28, %struct.timezone* null) #3
  store i32 1, i32* %21, align 4
  br label %32

; <label>:32:                                     ; preds = %0
  store double 4.999750e-01, double* @T, align 8
  store double 5.002500e-01, double* @T1, align 8
  store double 2.000000e+00, double* @T2, align 8
  %33 = load i64, i64* %23, align 8
  store i64 %33, i64* %20, align 8
  store i32 1, i32* %21, align 4
  store i32 1, i32* %22, align 4
  br label %34

; <label>:34:                                     ; preds = %343, %32
  store i64 0, i64* %3, align 8
  %35 = load i64, i64* %20, align 8
  %36 = mul nsw i64 12, %35
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %20, align 8
  %38 = mul nsw i64 14, %37
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %20, align 8
  %40 = mul nsw i64 345, %39
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %20, align 8
  %42 = mul nsw i64 210, %41
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %20, align 8
  %44 = mul nsw i64 32, %43
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %20, align 8
  %46 = mul nsw i64 899, %45
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %20, align 8
  %48 = mul nsw i64 616, %47
  store i64 %48, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %49 = load i64, i64* %20, align 8
  %50 = mul nsw i64 93, %49
  store i64 %50, i64* %12, align 8
  store double 1.000000e+00, double* %13, align 8
  store double -1.000000e+00, double* %14, align 8
  store double -1.000000e+00, double* %15, align 8
  store double -1.000000e+00, double* %16, align 8
  store i64 1, i64* %2, align 8
  br label %51

; <label>:51:                                     ; preds = %93, %34
  %52 = load i64, i64* %2, align 8
  %53 = load i64, i64* %3, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %96

; <label>:55:                                     ; preds = %51
  %56 = load double, double* %13, align 8
  %57 = load double, double* %14, align 8
  %58 = fadd double %56, %57
  %59 = load double, double* %15, align 8
  %60 = fadd double %58, %59
  %61 = load double, double* %16, align 8
  %62 = fsub double %60, %61
  %63 = load double, double* @T, align 8
  %64 = fmul double %62, %63
  store double %64, double* %13, align 8
  %65 = load double, double* %13, align 8
  %66 = load double, double* %14, align 8
  %67 = fadd double %65, %66
  %68 = load double, double* %15, align 8
  %69 = fsub double %67, %68
  %70 = load double, double* %16, align 8
  %71 = fadd double %69, %70
  %72 = load double, double* @T, align 8
  %73 = fmul double %71, %72
  store double %73, double* %14, align 8
  %74 = load double, double* %13, align 8
  %75 = load double, double* %14, align 8
  %76 = fsub double %74, %75
  %77 = load double, double* %15, align 8
  %78 = fadd double %76, %77
  %79 = load double, double* %16, align 8
  %80 = fadd double %78, %79
  %81 = load double, double* @T, align 8
  %82 = fmul double %80, %81
  store double %82, double* %15, align 8
  %83 = load double, double* %13, align 8
  %84 = fsub double -0.000000e+00, %83
  %85 = load double, double* %14, align 8
  %86 = fadd double %84, %85
  %87 = load double, double* %15, align 8
  %88 = fadd double %86, %87
  %89 = load double, double* %16, align 8
  %90 = fadd double %88, %89
  %91 = load double, double* @T, align 8
  %92 = fmul double %90, %91
  store double %92, double* %16, align 8
  br label %93

; <label>:93:                                     ; preds = %55
  %94 = load i64, i64* %2, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %2, align 8
  br label %51

; <label>:96:                                     ; preds = %51
  store double 1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  store double -1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  store double -1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  store double -1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  store i64 1, i64* %2, align 8
  br label %97

; <label>:97:                                     ; preds = %139, %96
  %98 = load i64, i64* %2, align 8
  %99 = load i64, i64* %4, align 8
  %100 = icmp sle i64 %98, %99
  br i1 %100, label %101, label %142

; <label>:101:                                    ; preds = %97
  %102 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %103 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %104 = fadd double %102, %103
  %105 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %106 = fadd double %104, %105
  %107 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %108 = fsub double %106, %107
  %109 = load double, double* @T, align 8
  %110 = fmul double %108, %109
  store double %110, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %111 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %112 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %113 = fadd double %111, %112
  %114 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %115 = fsub double %113, %114
  %116 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %117 = fadd double %115, %116
  %118 = load double, double* @T, align 8
  %119 = fmul double %117, %118
  store double %119, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %120 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %121 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %122 = fsub double %120, %121
  %123 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %124 = fadd double %122, %123
  %125 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %126 = fadd double %124, %125
  %127 = load double, double* @T, align 8
  %128 = fmul double %126, %127
  store double %128, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %129 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  %130 = fsub double -0.000000e+00, %129
  %131 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  %132 = fadd double %130, %131
  %133 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  %134 = fadd double %132, %133
  %135 = load double, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  %136 = fadd double %134, %135
  %137 = load double, double* @T, align 8
  %138 = fmul double %136, %137
  store double %138, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 4), align 16
  br label %139

; <label>:139:                                    ; preds = %101
  %140 = load i64, i64* %2, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %2, align 8
  br label %97

; <label>:142:                                    ; preds = %97
  store i64 1, i64* %2, align 8
  br label %143

; <label>:143:                                    ; preds = %148, %142
  %144 = load i64, i64* %2, align 8
  %145 = load i64, i64* %5, align 8
  %146 = icmp sle i64 %144, %145
  br i1 %146, label %147, label %151

; <label>:147:                                    ; preds = %143
  call void @PA(double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i32 0, i32 0))
  br label %148

; <label>:148:                                    ; preds = %147
  %149 = load i64, i64* %2, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %2, align 8
  br label %143

; <label>:151:                                    ; preds = %143
  store i32 1, i32* @J, align 4
  store i64 1, i64* %2, align 8
  br label %152

; <label>:152:                                    ; preds = %172, %151
  %153 = load i64, i64* %2, align 8
  %154 = load i64, i64* %6, align 8
  %155 = icmp sle i64 %153, %154
  br i1 %155, label %156, label %175

; <label>:156:                                    ; preds = %152
  %157 = load i32, i32* @J, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %160

; <label>:159:                                    ; preds = %156
  store i32 2, i32* @J, align 4
  br label %161

; <label>:160:                                    ; preds = %156
  store i32 3, i32* @J, align 4
  br label %161

; <label>:161:                                    ; preds = %160, %159
  %162 = load i32, i32* @J, align 4
  %163 = icmp sgt i32 %162, 2
  br i1 %163, label %164, label %165

; <label>:164:                                    ; preds = %161
  store i32 0, i32* @J, align 4
  br label %166

; <label>:165:                                    ; preds = %161
  store i32 1, i32* @J, align 4
  br label %166

; <label>:166:                                    ; preds = %165, %164
  %167 = load i32, i32* @J, align 4
  %168 = icmp slt i32 %167, 1
  br i1 %168, label %169, label %170

; <label>:169:                                    ; preds = %166
  store i32 1, i32* @J, align 4
  br label %171

; <label>:170:                                    ; preds = %166
  store i32 0, i32* @J, align 4
  br label %171

; <label>:171:                                    ; preds = %170, %169
  br label %172

; <label>:172:                                    ; preds = %171
  %173 = load i64, i64* %2, align 8
  %174 = add nsw i64 %173, 1
  store i64 %174, i64* %2, align 8
  br label %152

; <label>:175:                                    ; preds = %152
  store i32 1, i32* @J, align 4
  store i32 2, i32* @K, align 4
  store i32 3, i32* @L, align 4
  store i64 1, i64* %2, align 8
  br label %176

; <label>:176:                                    ; preds = %226, %175
  %177 = load i64, i64* %2, align 8
  %178 = load i64, i64* %7, align 8
  %179 = icmp sle i64 %177, %178
  br i1 %179, label %180, label %229

; <label>:180:                                    ; preds = %176
  %181 = load i32, i32* @J, align 4
  %182 = load i32, i32* @K, align 4
  %183 = load i32, i32* @J, align 4
  %184 = sub nsw i32 %182, %183
  %185 = mul nsw i32 %181, %184
  %186 = load i32, i32* @L, align 4
  %187 = load i32, i32* @K, align 4
  %188 = sub nsw i32 %186, %187
  %189 = mul nsw i32 %185, %188
  store i32 %189, i32* @J, align 4
  %190 = load i32, i32* @L, align 4
  %191 = load i32, i32* @K, align 4
  %192 = mul nsw i32 %190, %191
  %193 = load i32, i32* @L, align 4
  %194 = load i32, i32* @J, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load i32, i32* @K, align 4
  %197 = mul nsw i32 %195, %196
  %198 = sub nsw i32 %192, %197
  store i32 %198, i32* @K, align 4
  %199 = load i32, i32* @L, align 4
  %200 = load i32, i32* @K, align 4
  %201 = sub nsw i32 %199, %200
  %202 = load i32, i32* @K, align 4
  %203 = load i32, i32* @J, align 4
  %204 = add nsw i32 %202, %203
  %205 = mul nsw i32 %201, %204
  store i32 %205, i32* @L, align 4
  %206 = load i32, i32* @J, align 4
  %207 = load i32, i32* @K, align 4
  %208 = add nsw i32 %206, %207
  %209 = load i32, i32* @L, align 4
  %210 = add nsw i32 %208, %209
  %211 = sitofp i32 %210 to double
  %212 = load i32, i32* @L, align 4
  %213 = sub nsw i32 %212, 1
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %214
  store double %211, double* %215, align 8
  %216 = load i32, i32* @J, align 4
  %217 = load i32, i32* @K, align 4
  %218 = mul nsw i32 %216, %217
  %219 = load i32, i32* @L, align 4
  %220 = mul nsw i32 %218, %219
  %221 = sitofp i32 %220 to double
  %222 = load i32, i32* @K, align 4
  %223 = sub nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %224
  store double %221, double* %225, align 8
  br label %226

; <label>:226:                                    ; preds = %180
  %227 = load i64, i64* %2, align 8
  %228 = add nsw i64 %227, 1
  store i64 %228, i64* %2, align 8
  br label %176

; <label>:229:                                    ; preds = %176
  store double 5.000000e-01, double* %17, align 8
  store double 5.000000e-01, double* %18, align 8
  store i64 1, i64* %2, align 8
  br label %230

; <label>:230:                                    ; preds = %277, %229
  %231 = load i64, i64* %2, align 8
  %232 = load i64, i64* %8, align 8
  %233 = icmp sle i64 %231, %232
  br i1 %233, label %234, label %280

; <label>:234:                                    ; preds = %230
  %235 = load double, double* @T, align 8
  %236 = load double, double* @T2, align 8
  %237 = load double, double* %17, align 8
  %238 = call double @sin(double %237) #3
  %239 = fmul double %236, %238
  %240 = load double, double* %17, align 8
  %241 = call double @cos(double %240) #3
  %242 = fmul double %239, %241
  %243 = load double, double* %17, align 8
  %244 = load double, double* %18, align 8
  %245 = fadd double %243, %244
  %246 = call double @cos(double %245) #3
  %247 = load double, double* %17, align 8
  %248 = load double, double* %18, align 8
  %249 = fsub double %247, %248
  %250 = call double @cos(double %249) #3
  %251 = fadd double %246, %250
  %252 = fsub double %251, 1.000000e+00
  %253 = fdiv double %242, %252
  %254 = call double @atan(double %253) #3
  %255 = fmul double %235, %254
  store double %255, double* %17, align 8
  %256 = load double, double* @T, align 8
  %257 = load double, double* @T2, align 8
  %258 = load double, double* %18, align 8
  %259 = call double @sin(double %258) #3
  %260 = fmul double %257, %259
  %261 = load double, double* %18, align 8
  %262 = call double @cos(double %261) #3
  %263 = fmul double %260, %262
  %264 = load double, double* %17, align 8
  %265 = load double, double* %18, align 8
  %266 = fadd double %264, %265
  %267 = call double @cos(double %266) #3
  %268 = load double, double* %17, align 8
  %269 = load double, double* %18, align 8
  %270 = fsub double %268, %269
  %271 = call double @cos(double %270) #3
  %272 = fadd double %267, %271
  %273 = fsub double %272, 1.000000e+00
  %274 = fdiv double %263, %273
  %275 = call double @atan(double %274) #3
  %276 = fmul double %256, %275
  store double %276, double* %18, align 8
  br label %277

; <label>:277:                                    ; preds = %234
  %278 = load i64, i64* %2, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %2, align 8
  br label %230

; <label>:280:                                    ; preds = %230
  store double 1.000000e+00, double* %17, align 8
  store double 1.000000e+00, double* %18, align 8
  store double 1.000000e+00, double* %19, align 8
  store i64 1, i64* %2, align 8
  br label %281

; <label>:281:                                    ; preds = %288, %280
  %282 = load i64, i64* %2, align 8
  %283 = load i64, i64* %9, align 8
  %284 = icmp sle i64 %282, %283
  br i1 %284, label %285, label %291

; <label>:285:                                    ; preds = %281
  %286 = load double, double* %17, align 8
  %287 = load double, double* %18, align 8
  call void @P3(double %286, double %287, double* %19)
  br label %288

; <label>:288:                                    ; preds = %285
  %289 = load i64, i64* %2, align 8
  %290 = add nsw i64 %289, 1
  store i64 %290, i64* %2, align 8
  br label %281

; <label>:291:                                    ; preds = %281
  store i32 1, i32* @J, align 4
  store i32 2, i32* @K, align 4
  store i32 3, i32* @L, align 4
  store double 1.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 1), align 8
  store double 2.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 2), align 16
  store double 3.000000e+00, double* getelementptr inbounds ([5 x double], [5 x double]* @E1, i64 0, i64 3), align 8
  store i64 1, i64* %2, align 8
  br label %292

; <label>:292:                                    ; preds = %297, %291
  %293 = load i64, i64* %2, align 8
  %294 = load i64, i64* %10, align 8
  %295 = icmp sle i64 %293, %294
  br i1 %295, label %296, label %300

; <label>:296:                                    ; preds = %292
  call void @P0()
  br label %297

; <label>:297:                                    ; preds = %296
  %298 = load i64, i64* %2, align 8
  %299 = add nsw i64 %298, 1
  store i64 %299, i64* %2, align 8
  br label %292

; <label>:300:                                    ; preds = %292
  store i32 2, i32* @J, align 4
  store i32 3, i32* @K, align 4
  store i64 1, i64* %2, align 8
  br label %301

; <label>:301:                                    ; preds = %320, %300
  %302 = load i64, i64* %2, align 8
  %303 = load i64, i64* %11, align 8
  %304 = icmp sle i64 %302, %303
  br i1 %304, label %305, label %323

; <label>:305:                                    ; preds = %301
  %306 = load i32, i32* @J, align 4
  %307 = load i32, i32* @K, align 4
  %308 = add nsw i32 %306, %307
  store i32 %308, i32* @J, align 4
  %309 = load i32, i32* @J, align 4
  %310 = load i32, i32* @K, align 4
  %311 = add nsw i32 %309, %310
  store i32 %311, i32* @K, align 4
  %312 = load i32, i32* @K, align 4
  %313 = load i32, i32* @J, align 4
  %314 = sub nsw i32 %312, %313
  store i32 %314, i32* @J, align 4
  %315 = load i32, i32* @K, align 4
  %316 = load i32, i32* @J, align 4
  %317 = sub nsw i32 %315, %316
  %318 = load i32, i32* @J, align 4
  %319 = sub nsw i32 %317, %318
  store i32 %319, i32* @K, align 4
  br label %320

; <label>:320:                                    ; preds = %305
  %321 = load i64, i64* %2, align 8
  %322 = add nsw i64 %321, 1
  store i64 %322, i64* %2, align 8
  br label %301

; <label>:323:                                    ; preds = %301
  store double 7.500000e-01, double* %17, align 8
  store i64 1, i64* %2, align 8
  br label %324

; <label>:324:                                    ; preds = %335, %323
  %325 = load i64, i64* %2, align 8
  %326 = load i64, i64* %12, align 8
  %327 = icmp sle i64 %325, %326
  br i1 %327, label %328, label %338

; <label>:328:                                    ; preds = %324
  %329 = load double, double* %17, align 8
  %330 = call double @log(double %329) #3
  %331 = load double, double* @T1, align 8
  %332 = fdiv double %330, %331
  %333 = call double @exp(double %332) #3
  %334 = call double @sqrt(double %333) #3
  store double %334, double* %17, align 8
  br label %335

; <label>:335:                                    ; preds = %328
  %336 = load i64, i64* %2, align 8
  %337 = add nsw i64 %336, 1
  store i64 %337, i64* %2, align 8
  br label %324

; <label>:338:                                    ; preds = %324
  %339 = load i32, i32* %22, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %22, align 4
  %341 = load i32, i32* %21, align 4
  %342 = icmp sle i32 %340, %341
  br i1 %342, label %343, label %344

; <label>:343:                                    ; preds = %338
  br label %34

; <label>:344:                                    ; preds = %338
  %345 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  store %struct._IO_FILE* %345, %struct._IO_FILE** %29, align 8
  %346 = call i32 @gettimeofday(%struct.timeval* %30, %struct.timezone* null) #3
  %347 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  %348 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = sub nsw i64 %349, %351
  %353 = mul nsw i64 %352, 1000000
  %354 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = sub nsw i64 %355, %357
  %359 = add nsw i64 %353, %358
  %360 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i64 %359)
  %361 = load %struct._IO_FILE*, %struct._IO_FILE** %29, align 8
  %362 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = sub nsw i64 %363, %365
  %367 = mul nsw i64 %366, 1000000
  %368 = getelementptr inbounds %struct.timeval, %struct.timeval* %30, i32 0, i32 1
  %369 = load i64, i64* %368, align 8
  %370 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 1
  %371 = load i64, i64* %370, align 8
  %372 = sub nsw i64 %369, %371
  %373 = add nsw i64 %367, %372
  %374 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %361, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 %373)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @PA(double*) #0 {
  %2 = alloca double*, align 8
  store double* %0, double** %2, align 8
  store i32 0, i32* @J, align 4
  br label %3

; <label>:3:                                      ; preds = %85, %1
  %4 = load double*, double** %2, align 8
  %5 = getelementptr inbounds double, double* %4, i64 1
  %6 = load double, double* %5, align 8
  %7 = load double*, double** %2, align 8
  %8 = getelementptr inbounds double, double* %7, i64 2
  %9 = load double, double* %8, align 8
  %10 = fadd double %6, %9
  %11 = load double*, double** %2, align 8
  %12 = getelementptr inbounds double, double* %11, i64 3
  %13 = load double, double* %12, align 8
  %14 = fadd double %10, %13
  %15 = load double*, double** %2, align 8
  %16 = getelementptr inbounds double, double* %15, i64 4
  %17 = load double, double* %16, align 8
  %18 = fsub double %14, %17
  %19 = load double, double* @T, align 8
  %20 = fmul double %18, %19
  %21 = load double*, double** %2, align 8
  %22 = getelementptr inbounds double, double* %21, i64 1
  store double %20, double* %22, align 8
  %23 = load double*, double** %2, align 8
  %24 = getelementptr inbounds double, double* %23, i64 1
  %25 = load double, double* %24, align 8
  %26 = load double*, double** %2, align 8
  %27 = getelementptr inbounds double, double* %26, i64 2
  %28 = load double, double* %27, align 8
  %29 = fadd double %25, %28
  %30 = load double*, double** %2, align 8
  %31 = getelementptr inbounds double, double* %30, i64 3
  %32 = load double, double* %31, align 8
  %33 = fsub double %29, %32
  %34 = load double*, double** %2, align 8
  %35 = getelementptr inbounds double, double* %34, i64 4
  %36 = load double, double* %35, align 8
  %37 = fadd double %33, %36
  %38 = load double, double* @T, align 8
  %39 = fmul double %37, %38
  %40 = load double*, double** %2, align 8
  %41 = getelementptr inbounds double, double* %40, i64 2
  store double %39, double* %41, align 8
  %42 = load double*, double** %2, align 8
  %43 = getelementptr inbounds double, double* %42, i64 1
  %44 = load double, double* %43, align 8
  %45 = load double*, double** %2, align 8
  %46 = getelementptr inbounds double, double* %45, i64 2
  %47 = load double, double* %46, align 8
  %48 = fsub double %44, %47
  %49 = load double*, double** %2, align 8
  %50 = getelementptr inbounds double, double* %49, i64 3
  %51 = load double, double* %50, align 8
  %52 = fadd double %48, %51
  %53 = load double*, double** %2, align 8
  %54 = getelementptr inbounds double, double* %53, i64 4
  %55 = load double, double* %54, align 8
  %56 = fadd double %52, %55
  %57 = load double, double* @T, align 8
  %58 = fmul double %56, %57
  %59 = load double*, double** %2, align 8
  %60 = getelementptr inbounds double, double* %59, i64 3
  store double %58, double* %60, align 8
  %61 = load double*, double** %2, align 8
  %62 = getelementptr inbounds double, double* %61, i64 1
  %63 = load double, double* %62, align 8
  %64 = fsub double -0.000000e+00, %63
  %65 = load double*, double** %2, align 8
  %66 = getelementptr inbounds double, double* %65, i64 2
  %67 = load double, double* %66, align 8
  %68 = fadd double %64, %67
  %69 = load double*, double** %2, align 8
  %70 = getelementptr inbounds double, double* %69, i64 3
  %71 = load double, double* %70, align 8
  %72 = fadd double %68, %71
  %73 = load double*, double** %2, align 8
  %74 = getelementptr inbounds double, double* %73, i64 4
  %75 = load double, double* %74, align 8
  %76 = fadd double %72, %75
  %77 = load double, double* @T2, align 8
  %78 = fdiv double %76, %77
  %79 = load double*, double** %2, align 8
  %80 = getelementptr inbounds double, double* %79, i64 4
  store double %78, double* %80, align 8
  %81 = load i32, i32* @J, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* @J, align 4
  %83 = load i32, i32* @J, align 4
  %84 = icmp slt i32 %83, 6
  br i1 %84, label %85, label %86

; <label>:85:                                     ; preds = %3
  br label %3

; <label>:86:                                     ; preds = %3
  ret void
}

; Function Attrs: nounwind
declare double @atan(double) #1

; Function Attrs: nounwind
declare double @sin(double) #1

; Function Attrs: nounwind
declare double @cos(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @P3(double, double, double*) #0 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double*, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %0, double* %4, align 8
  store double %1, double* %5, align 8
  store double* %2, double** %6, align 8
  %9 = load double, double* %4, align 8
  store double %9, double* %7, align 8
  %10 = load double, double* %5, align 8
  store double %10, double* %8, align 8
  %11 = load double, double* @T, align 8
  %12 = load double, double* %7, align 8
  %13 = load double, double* %8, align 8
  %14 = fadd double %12, %13
  %15 = fmul double %11, %14
  store double %15, double* %7, align 8
  %16 = load double, double* @T, align 8
  %17 = load double, double* %7, align 8
  %18 = load double, double* %8, align 8
  %19 = fadd double %17, %18
  %20 = fmul double %16, %19
  store double %20, double* %8, align 8
  %21 = load double, double* %7, align 8
  %22 = load double, double* %8, align 8
  %23 = fadd double %21, %22
  %24 = load double, double* @T2, align 8
  %25 = fdiv double %23, %24
  %26 = load double*, double** %6, align 8
  store double %25, double* %26, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @P0() #0 {
  %1 = load i32, i32* @K, align 4
  %2 = sext i32 %1 to i64
  %3 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %2
  %4 = load double, double* %3, align 8
  %5 = load i32, i32* @J, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %6
  store double %4, double* %7, align 8
  %8 = load i32, i32* @L, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %9
  %11 = load double, double* %10, align 8
  %12 = load i32, i32* @K, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %13
  store double %11, double* %14, align 8
  %15 = load i32, i32* @J, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %16
  %18 = load double, double* %17, align 8
  %19 = load i32, i32* @L, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [5 x double], [5 x double]* @E1, i64 0, i64 %20
  store double %18, double* %21, align 8
  ret void
}

; Function Attrs: nounwind
declare double @sqrt(double) #1

; Function Attrs: nounwind
declare double @exp(double) #1

; Function Attrs: nounwind
declare double @log(double) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @printf(i8*, ...) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
