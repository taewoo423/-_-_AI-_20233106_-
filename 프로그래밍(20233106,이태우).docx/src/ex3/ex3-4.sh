#!/bin/bash

read -p "리눅스가 재밌나요? (yes / no): " response

case "$response" in
    [Yy]|[Yy][Ee][Ss]|[Yy][Ee][Aa][Hh])
        result="yes"
        ;;
    [Nn]|[Nn][Oo]|[Nn][Oo][Nn][Oo])
        result="no"
        ;;
    *)
        result="yes or no로 입력해주세요"
        ;;
esac

echo $result

