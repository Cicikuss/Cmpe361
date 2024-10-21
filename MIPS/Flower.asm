.data
framebuffer : .word 0x10008000
.eqv GREEN  0x00FF00
.eqv YELLOW 0xFFFF00
.eqv WHITE 0xFFFFFF
.eqv BLACK 0x000000
.eqv PURPLE 0xFF00f3




.text
la $t0,framebuffer
lw $s1, 0($t0)
li $t3,256

#draw background 
li $t2,WHITE
move $t4,$s1
sw $t2,0($t4)

loop1:
beq $t3,$v0,part2
addi $t4,$t4,4
sw $t2, 0($t4)
subi $t3,$t3,1
j loop1


part2:
li $t2,BLACK
move $t4,$s1
addi $t4,$t4,88
sw $t2,0($t4)

addi $t4,$t4,60
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,8
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,32
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)


addi $t4,$t4,32
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,36
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,28
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)


li $t2,YELLOW
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,20
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,YELLOW
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,28
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,36
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,32
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,32
sw $t2,0($t4)

addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,8
sw $t2,0($t4)

li $t2,PURPLE
addi $t4,$t4,4
sw $t2,0($t4)

li $t2,BLACK
addi $t4,$t4,4
sw $t2,0($t4)

addi $t4,$t4,60
sw $t2,0($t4)




 exit:
 li $v0,10
 syscall 
 
 
