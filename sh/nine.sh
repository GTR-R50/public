#!/usr/bin/expect -f

spawn sudo ./installer.sh

set timeout 3 

expect {
"By running this installer, you agree to allow the Shardeum team to collect this data. (y/n)?*" {send "y\n"} 
# shellcheck disable=SC1089
}
expect {
"Do you want to run the web based Dashboard? (y/n)?*" {send "y\n"} 
}
expect {
"*password*" {send "123456\n"} 
}

expect {
"*default 8080" {send "8080\n"} 
}

expect {
"*default 9001" {send "9001\n"} 
}

expect {
"*default 10001" {send "10001\n"} 
}

expect {
#"*shardeum" {send "/home/ubuntu/.shardeum\n"}
"*shardeum" {send "/root"}
}

expect eof
