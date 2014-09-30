# !/bin/sh
find $1 -type f -name '*.'$2 -o -name '*.'$2 | while read i
    do
    echo $i
   # CONVERT WINDOWS-1251 -> UTF-8
   # iconv -f WINDOWS-1251 -t UTF-8 "$i" > tmp
   
   # CONVERT UTF-8 -> WINDOWS-1251
    iconv -f UTF-8 -t WINDOWS-1251 "$i" > tmp
    mv -f tmp "$i"
    done
    
# запуск в консоли: sh iconv.sh curdir php
# curdir - каталог, файлы которого перекодируем
# php - расширение файлов, которе перекодируем
