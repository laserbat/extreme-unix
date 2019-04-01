#!/bin/sed -Ef
:a
s/(\w)(\w+)/&!\2\1/
s/(\w+)(\w)!.*/&!\2\1/

s/(\w{63})(\w+)!.*/&!\2\1/
s/(\w+)(\w{63})!.*/&!\2\1/

s/(\w{64})(\w+)!.*/&!\2\1/
s/(\w+)(\w{64})!.*/&!\2\1/

s/(\w{65})(\w+)!.*/&!\2\1/
s/(\w+)(\w{65})!.*/&!\2\1!/

:b
s/(\w)(\w*)!(.*)!(.*)/\3!\2!\4\1/
tb

s/!//g

s/(.)(.{8})/ \1:\2 /g
s/0//g

s/ :111 | 1:111? /1/g
s/ [1:]+ /0/g

h
x
y/01/.#/
s/.{64}/&\n/g
s/$/\n/
p
x

ba
