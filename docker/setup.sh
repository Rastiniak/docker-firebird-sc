#!/usr/bin/expect

spawn dpkg-reconfigure firebird2.5-superclassic -freadline
expect "Enable Firebird server?"
send "Y\r"

expect "Password for SYSDBA:"
send "masterkey\r"

# done
expect eof