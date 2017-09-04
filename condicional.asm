.text
		#	if(idade < 16)
		#	print 0
		#	else if(idade < 18)
		#	print 1
		#	else
		#	print 2
	
		lw	$s0, idade	#seta idade em $0		(idade = 15)
		addi	$v0, $zero, 1	#seta 1 em $v0			(para que a syscall imprima um int)
	
	IF:	bge	$s0, 16, ELIF	#pula o if se i >= 16		(if idade < 16)
		addi	$a0, $zero, 0	#seta 0 em $a0			(para que a syscall imprima 0)
		syscall			#imprime $a0			(print 0)
		j	EXIT		#pula para o fim		(para não executar os outros casos)
	
	ELIF:	bge	$s0, 18, ELSE	#pula o elif se i >= 18		(else if idade < 18)
		addi	$a0, $zero, 1	#seta 1 em $a0			(para que a syscall imprima 1)
		syscall			#imprime $a0			(print 1)
		j	EXIT		#pula para o fim		(para não executar os outros casos)
	
	ELSE:	addi	$a0, $zero, 2	#seta 2 em $a0			(para que a syscall imprima 2)
		syscall			#imprime $a0			(print 2)
			
	EXIT:	addi	$a0, $zero, 3	#seta 3 em $a0			(para que a syscall imprima 3)
		syscall			#imprime $a0			(print 3)

.data
	idade: .word 27