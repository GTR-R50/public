#!/usr/bin/expect -f

spawn sudo ./shell.sh

set timeout 3 

# expect {
# "*is not running*" {send "sudo docker start shardeum-dashboard\n"} 
# }

expect {
	"*:~/app$" {send "sudo operator-cli gui start\n"} 
}

expect eof


