.data
message1: .asciiz "Please a number:"
result:  .asciiz "\nResult is:"

.text

main:
#print message
li $v0,4
la $a0,message1
syscall 

#read integer
li $v0,5
syscall 
move $s0,$v0

#calculate fact
move $t0,$s0
fact:
beq $t0,1,exit
subi $t0,$t0,1
mul $s0,$s0,$t0
j fact

exit:
li $v0,4
la $a0,result
syscall 
li $v0,1
move $a0,$s0
syscall
li $v0,10
syscall
