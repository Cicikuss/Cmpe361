.data
message1: .asciiz "Please Enter number: "
result: .asciiz "Result is: "


.text
main:
ori $v0,$0,4
la $a0,message1
syscall

 
 #read number
ori $v0,$0,5
syscall

#fibonachi
ori $t0,$0,0 #a
ori $t1,$0,1 #b
ori $t2,$0,1
add $s0,$t0,$t1 #c

loop:
beq $v0,$t2,exit
add $s0,$t0,$t1
addu $t0,$0,$t1
addu $t1,$0,$s0
subi $v0,$v0,1
j loop
  



exit:
ori $v0,$0,4
la $a0,result
syscall
ori $v0,$0,1
move $a0,$s0
syscall 
ori $v0,$0,10
syscall
