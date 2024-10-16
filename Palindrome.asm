.data
message1: .asciiz "Please enter the length of string: "
message2 : .asciiz "Please enter the string:"
message3: .asciiz "\nPalindrome"
message4: .asciiz "\nNot Palindrome"

.text
main:
li $v0,4
la $a0,message1
syscall

read_length:
li $v0,5
syscall 
move $s0,$v0  #length of string
addi $s0,$s0,1

allocate:
li $v0,9
move $a0,$s0
syscall
move $s1,$v0  #addres of string

read_string:
li $v0,4
la $a0,message2
syscall 
li $v0,8
move $a0,$s1
move $a1,$s0
syscall


move $t0,$s1 #copy addres to t0
move $t1,$s1 #copy addres to t1
subi $t2, $s0,2
add $t1,$t1,$t2 #shift addres to end of string

isPalindrome:
lb $t3,0($t0) #load char to register
lb $t4,0($t1) #load char to register
beq $t2,0,printPolindrome
bne $t3,$t4,printNotPalindrome
addi $t0,$t0,1
subi $t1,$t1,1
subi $t2,$t2,1
j isPalindrome



printPolindrome:
li $v0,4
la $a0,message3
syscall 
j exit

printNotPalindrome:
li $v0,4
la $a0,message4
syscall 
j exit
  
   
exit:
li $v0,10
syscall 
