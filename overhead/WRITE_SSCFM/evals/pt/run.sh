
#! /bin/bash



cd th1
./just.sh
cd ..

cd th2
./just.sh
cd ..

cd th3
./just.sh
cd ..

cd th4
./just.sh
cd ..



cd th1
./min_value_finder overhead.txt 1 9 > ../eval_th1
cd ..

cd th2
./min_value_finder overhead.txt 1 9 > ../eval_th2
cd ..

cd th3
./min_value_finder overhead.txt 1 9 > ../eval_th3
cd ..

cd th4
./min_value_finder overhead.txt 1 9 > ../eval_th4
cd ..
