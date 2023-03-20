#!/usr/bin/expect -f

spawn sudo apt install docker.io

set timeout 10

# expect {
# 	"*[Y/n]*" {send "Y\n"} 
# }
expect "want to continue"
send "Y\n"

expect eof

