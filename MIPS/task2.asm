.text
addi $s0,$0,256 #a
addi $t1,$0,1

while: beq $s0,$t1,exit  #a!=1
sra $s0,$s0,1 #a=a/2
addi $s1,$s1,1 #b=b+1
j while

exit:
li $v0, 10                   
syscall 

