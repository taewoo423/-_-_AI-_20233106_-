#!/bin/sh

echo "숫자 입력"
read num

count=1
while [ $count -le $num ]; do
    echo "Hello, World!"
    count=$((count+1))
done

