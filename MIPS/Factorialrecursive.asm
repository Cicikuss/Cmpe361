.data
message: .asciiz "Enter ther number: "


.text
main:
la $a0,message
li $v0,4
syscall 


li $v0,5
syscall 

move $a0,$v0
jal factorial

move $a0,$v0
li $v0,1
syscall 

li $v0,10
syscall 

factorial:
addi $sp,$sp,-8
sw $a0,0($sp)
sw $ra,4($sp)

li $t1,1
bne $a0,$t1,L1
ori $v0,$0,1

lw $a0,0($sp)
lw $ra,4($sp)
addi $sp,$sp,8
jr $ra

L1:
addi $a0,$a0,-1
jal factorial
lw $a0,0($sp)
lw $ra,4($sp)
addi $sp,$sp,8
mul $v0,$v0,$a0

jr $ra


