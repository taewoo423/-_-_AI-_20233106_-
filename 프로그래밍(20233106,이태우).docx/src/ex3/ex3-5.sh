#!/bin/sh
myFunction() {
echo "함수안으로들어왔음"
ls
return
}
echo "프로그램을시작합니다."
myFunction
echo "프로그램을종료합니다."
exit 0
