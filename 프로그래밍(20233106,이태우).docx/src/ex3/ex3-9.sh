#!/bin/bash

read -p "검색: " search_name

if [ ! -e DB.txt ]; then
	echo "DB.txt 파일이 존재하지 않습니다."

fi

search_result=$(grep "$search_name" DB.txt)

if [ -z "$search_result" ]; then
	echo "해당 이름의 정보가 없습니다."
else
	echo "검색 결과: $search_result"
fi

