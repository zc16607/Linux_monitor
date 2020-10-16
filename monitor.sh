#!/bin/bash


# Cpu Load

top -bn1| grep 'load average'|awk '{print "Cpu Load: "$10,$11,$12}'

# Cpu Idle
top -bn1| grep '%Cpu' |awk '{print "Cpu Idle: "$8}'

# Mem Available
free -h |grep Mem |awk '{print "Mem Available: "$7}'

# IO_Stat

iostat -xdk| grep "sda"| awk '{print "IO_stat: "$6" rkB/s",$7" wkB/s","$util: "$14}'
