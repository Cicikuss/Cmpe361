.text
addi $s0,$0,5 #a
addi $s1,$0,23 #b

slt $t0,$s0,$s1 #b>a
beq $t0,$0,else
sll $s2,$s0,1 #c=a*2
j exit

else:
add $s3,$s0,$s1 #d=a+b

exit:
li $v0, 10                   
syscall                      