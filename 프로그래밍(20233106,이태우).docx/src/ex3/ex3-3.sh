#!/bin/sh

read weight
read height_cm

height=$(printf "%.2f" "$(echo "scale=2; $height_cm / 100" | bc)")

calculate() {
  awk "BEGIN { printf \"%.2f\", $* }"
}

height_squared=$(calculate "$height * $height")
bmi=$(calculate "$weight / $height_squared")

if [ "$(echo "$bmi >= 18.5 && $bmi < 23" | bc)" -eq 1 ]; then
    printf "정상 체중입니다.\n"
elif [ "$(echo "$bmi >= 23" | bc)" -eq 1 ]; then
    printf "과체중입니다.\n"
else
    printf "저체중입니다.\n"
fi

