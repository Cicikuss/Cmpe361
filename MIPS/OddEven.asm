.data 
message1: .asciiz "Please Enter number: "
odd: .asciiz "\nNumber is odd"
even: .asciiz  "\nNumber is even"


.text
main:
ori $v0,$0,4
la $a0,message1
syscall 

#read number
ori $v0,$0,5
syscall
ori $t0,$0,1

andi $v0,$v0,1
beq $v0,$t0,odd_print
j even_print

odd_print:
ori $v0,$0,4
la $a0,odd
syscall
j exit 

even_print:
ori $v0,$0,4
la $a0,even
syscall

exit:
ori $v0,$0,10
syscall 

 


