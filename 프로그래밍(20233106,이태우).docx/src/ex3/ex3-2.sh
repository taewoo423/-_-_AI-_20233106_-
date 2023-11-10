#!/bin/bash

read -p "입력" expression

result=$(awk "BEGIN {print $expression}")
echo " $result"

