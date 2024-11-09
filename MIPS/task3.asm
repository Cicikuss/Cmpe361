.text

li $v0,9 #sbrk bellekte yer ayırmak için kullandım
addi $a0,$0,8000 #2000*4
syscall 
move $s0,$v0 #$v0 daki base adresi $s0 a taşıdım

add $s1,$0,$0,#a yı initialze ettim 
addi $t0,$0,2000 #a ile karşılaştırma yapmak için

loop:slt $at,$t0,$s1
bne $at,$0,exit #bu aslında bgt instructiona eşit ,bgt instruction ı aslında psuedo-instruction ve psuedo-instructionlarda $at registerı kullanılır
sll $t2,$s1,2
add $t3,$s0,$t2
lw $t1,0($t3)
sll $t1,$t1,2	
sw $t1,0($t3)
addi $s1,$s1,2
j loop




exit:
li $v0,10 #programın bittiğine haber verdim
syscall 
