.text
	addi $v0, $zero, 2		#seta 2 em $v0
	lwc1 $f12, pi

.data
	PI: .float 3.1416		#cria uma posição de memória para guardar o valor de pi