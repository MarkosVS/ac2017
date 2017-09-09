.text
		#todos os "blocos" fazem basicamente a mesma coisa
	MAIN:	addi	$a0, $zero, 5	#seta 5 em $a0
		addi	$a1, $zero, 7	#seta 7 em $a1
		jal	PSOMA		#chama o procedimento PSOMA
		
		addi	$a0, $zero, 4
		addi	$a1, $zero, 7
		jal	PSOMA
		
		addi	$a0, $zero, 5
		addi	$a1, $zero, 5
		jal	PSOMA
		
		addi	$a0, $zero, 5
		addi	$a1, $zero, 8
		jal	PSOMA
		
		j	EXIT		#pula para o fim do programa
	
	
		#inicio procedimento PSOMA
		add	$a0, $a0, $a1	#$a0 = $a0 + $a1
		addi	$v0, $zero, 1	#$v0 = 1
		syscall			#print $a0
		jr	$ra		#volta para a execução normal no programa
	
	
	EXIT:

.data
