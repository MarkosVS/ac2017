#dados
.data
	msg: .asciiz "Hello world\n"	#cria uma variavel na RAM para armazenar a mensagem

#código
.text
	addi $v0, $zero, 4		#seta $v0 como 4
	la $a0, msg			#seta $a0 como o endereço de msg
	syscall				#chama o sistema para imprimir na tela
