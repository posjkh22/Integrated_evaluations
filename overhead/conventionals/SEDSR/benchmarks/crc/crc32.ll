; ModuleID = 'crc32.bc'
source_filename = "crc_32.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@crc_32_tab = internal global [256 x i64] [i64 0, i64 1996959894, i64 3993919788, i64 2567524794, i64 124634137, i64 1886057615, i64 3915621685, i64 2657392035, i64 249268274, i64 2044508324, i64 3772115230, i64 2547177864, i64 162941995, i64 2125561021, i64 3887607047, i64 2428444049, i64 498536548, i64 1789927666, i64 4089016648, i64 2227061214, i64 450548861, i64 1843258603, i64 4107580753, i64 2211677639, i64 325883990, i64 1684777152, i64 4251122042, i64 2321926636, i64 335633487, i64 1661365465, i64 4195302755, i64 2366115317, i64 997073096, i64 1281953886, i64 3579855332, i64 2724688242, i64 1006888145, i64 1258607687, i64 3524101629, i64 2768942443, i64 901097722, i64 1119000684, i64 3686517206, i64 2898065728, i64 853044451, i64 1172266101, i64 3705015759, i64 2882616665, i64 651767980, i64 1373503546, i64 3369554304, i64 3218104598, i64 565507253, i64 1454621731, i64 3485111705, i64 3099436303, i64 671266974, i64 1594198024, i64 3322730930, i64 2970347812, i64 795835527, i64 1483230225, i64 3244367275, i64 3060149565, i64 1994146192, i64 31158534, i64 2563907772, i64 4023717930, i64 1907459465, i64 112637215, i64 2680153253, i64 3904427059, i64 2013776290, i64 251722036, i64 2517215374, i64 3775830040, i64 2137656763, i64 141376813, i64 2439277719, i64 3865271297, i64 1802195444, i64 476864866, i64 2238001368, i64 4066508878, i64 1812370925, i64 453092731, i64 2181625025, i64 4111451223, i64 1706088902, i64 314042704, i64 2344532202, i64 4240017532, i64 1658658271, i64 366619977, i64 2362670323, i64 4224994405, i64 1303535960, i64 984961486, i64 2747007092, i64 3569037538, i64 1256170817, i64 1037604311, i64 2765210733, i64 3554079995, i64 1131014506, i64 879679996, i64 2909243462, i64 3663771856, i64 1141124467, i64 855842277, i64 2852801631, i64 3708648649, i64 1342533948, i64 654459306, i64 3188396048, i64 3373015174, i64 1466479909, i64 544179635, i64 3110523913, i64 3462522015, i64 1591671054, i64 702138776, i64 2966460450, i64 3352799412, i64 1504918807, i64 783551873, i64 3082640443, i64 3233442989, i64 3988292384, i64 2596254646, i64 62317068, i64 1957810842, i64 3939845945, i64 2647816111, i64 81470997, i64 1943803523, i64 3814918930, i64 2489596804, i64 225274430, i64 2053790376, i64 3826175755, i64 2466906013, i64 167816743, i64 2097651377, i64 4027552580, i64 2265490386, i64 503444072, i64 1762050814, i64 4150417245, i64 2154129355, i64 426522225, i64 1852507879, i64 4275313526, i64 2312317920, i64 282753626, i64 1742555852, i64 4189708143, i64 2394877945, i64 397917763, i64 1622183637, i64 3604390888, i64 2714866558, i64 953729732, i64 1340076626, i64 3518719985, i64 2797360999, i64 1068828381, i64 1219638859, i64 3624741850, i64 2936675148, i64 906185462, i64 1090812512, i64 3747672003, i64 2825379669, i64 829329135, i64 1181335161, i64 3412177804, i64 3160834842, i64 628085408, i64 1382605366, i64 3423369109, i64 3138078467, i64 570562233, i64 1426400815, i64 3317316542, i64 2998733608, i64 733239954, i64 1555261956, i64 3268935591, i64 3050360625, i64 752459403, i64 1541320221, i64 2607071920, i64 3965973030, i64 1969922972, i64 40735498, i64 2617837225, i64 3943577151, i64 1913087877, i64 83908371, i64 2512341634, i64 3803740692, i64 2075208622, i64 213261112, i64 2463272603, i64 3855990285, i64 2094854071, i64 198958881, i64 2262029012, i64 4057260610, i64 1759359992, i64 534414190, i64 2176718541, i64 4139329115, i64 1873836001, i64 414664567, i64 2282248934, i64 4279200368, i64 1711684554, i64 285281116, i64 2405801727, i64 4167216745, i64 1634467795, i64 376229701, i64 2685067896, i64 3608007406, i64 1308918612, i64 956543938, i64 2808555105, i64 3495958263, i64 1231636301, i64 1047427035, i64 2932959818, i64 3654703836, i64 1088359270, i64 936918000, i64 2847714899, i64 3736837829, i64 1202900863, i64 817233897, i64 3183342108, i64 3401237130, i64 1404277552, i64 615818150, i64 3134207493, i64 3453421203, i64 1423857449, i64 601450431, i64 3009837614, i64 3294710456, i64 1567103746, i64 711928724, i64 3020668471, i64 3272380065, i64 1510334235, i64 755167117], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c" [target finished!]\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c" [target] Execution Time: %ld\0A\00", align 1
@is_signature_queue_full = external global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define i64 @updateCRC32(i8 zeroext, i64) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i8, i8* %3, align 1
  %7 = zext i8 %6 to i64
  %8 = xor i64 %5, %7
  %9 = and i64 %8, 255
  %10 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_32_tab, i64 0, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = lshr i64 %12, 8
  %14 = xor i64 %11, %13
  ret i64 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @crc32file(i8*, i64*, i64*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 4294967295, i64* %9, align 8
  %11 = load i64*, i64** %7, align 8
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** %8, align 8
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %5, align 8
  call void @perror(i8* %16)
  store i32 -1, i32* %4, align 4
  br label %50

; <label>:17:                                     ; preds = %3
  br label %18

; <label>:18:                                     ; preds = %22, %17
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %20 = call i32 @_IO_getc(%struct._IO_FILE* %19)
  store i32 %20, i32* %10, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %37

; <label>:22:                                     ; preds = %18
  %23 = load i64*, i64** %7, align 8
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = trunc i32 %27 to i8
  %29 = zext i8 %28 to i64
  %30 = xor i64 %26, %29
  %31 = and i64 %30, 255
  %32 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_32_tab, i64 0, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = lshr i64 %34, 8
  %36 = xor i64 %33, %35
  store i64 %36, i64* %9, align 8
  br label %18

; <label>:37:                                     ; preds = %18
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %39 = call i32 @ferror(%struct._IO_FILE* %38) #3
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** %5, align 8
  call void @perror(i8* %42)
  %43 = load i64*, i64** %7, align 8
  store i64 -1, i64* %43, align 8
  br label %44

; <label>:44:                                     ; preds = %41, %37
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %46 = call i32 @fclose(%struct._IO_FILE* %45)
  %47 = load i64, i64* %9, align 8
  %48 = xor i64 %47, -1
  store i64 %48, i64* %9, align 8
  %49 = load i64*, i64** %6, align 8
  store i64 %48, i64* %49, align 8
  store i32 0, i32* %4, align 4
  br label %50

; <label>:50:                                     ; preds = %44, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @perror(i8*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define i64 @crc32buf(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 4294967295, i64* %5, align 8
  br label %6

; <label>:6:                                      ; preds = %21, %2
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

; <label>:9:                                      ; preds = %6
  %10 = load i64, i64* %5, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i64
  %14 = xor i64 %10, %13
  %15 = and i64 %14, 255
  %16 = getelementptr inbounds [256 x i64], [256 x i64]* @crc_32_tab, i64 0, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = lshr i64 %18, 8
  %20 = xor i64 %17, %19
  store i64 %20, i64* %5, align 8
  br label %21

; <label>:21:                                     ; preds = %9
  %22 = load i64, i64* %4, align 8
  %23 = add i64 %22, -1
  store i64 %23, i64* %4, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  br label %6

; <label>:26:                                     ; preds = %6
  %27 = load i64, i64* %5, align 8
  %28 = xor i64 %27, -1
  ret i64 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timeval, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = call i32 @gettimeofday(%struct.timeval* %9, %struct.timezone* null) #3
  br label %12

; <label>:12:                                     ; preds = %16, %2
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %4, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %23

; <label>:16:                                     ; preds = %12
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i32 1
  store i8** %18, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @crc32file(i8* %19, i64* %6, i64* %7)
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %8, align 4
  br label %12

; <label>:23:                                     ; preds = %12
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  %25 = call i32 @gettimeofday(%struct.timeval* %10, %struct.timezone* null) #3
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %27, %29
  %31 = mul nsw i64 %30, 1000000
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %33, %35
  %37 = add nsw i64 %31, %36
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i64 %37)
  store i32 1, i32* @is_signature_queue_full, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

declare i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 5.0.0 (tags/RELEASE_500/final)"}
