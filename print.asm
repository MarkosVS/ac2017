.text
	addi $v0, $zero, 4		#seta $v0 como 4
	la $a0, msg			#seta $a0 como o endereço de msg
	syscall				#chama o sistema (para imprimir msg)
	addi $v0, $zero, 1		#seta 1 em $v0
	lw $a0, age			#seta age em $a0
	syscall				#chama o sistema (para imprimir age)
.data
	age: .word 20			#palavra (32 bits) representando um int (20)
	msg: .asciiz "Minha idade: "	#cria uma variavel na RAM para armazenar a mensagem
