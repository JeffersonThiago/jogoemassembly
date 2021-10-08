.text
main:
	###############################
	#unit width in pixels 4	      #     
	#unit heigth in pixels 4      #   
	#display width in pixels 512  #
	#display heigth in pixels 256 #
	###############################
	
	#vidas
	addi $24,$0,3 
	#contador
	addi $20,$0,0 
	lui $12,0x1001
	#ponteiro de desenhar mapa e meteoro
	lui $8,0x1001 
	#ponteiro mapeamento de teclado
	lui $22,0xFFFF 
	#ponteiro da mira
	lui $9,0x1001
	#ponteiro auxiliar da mira
	lui $7,0x1001
	
#_________________________________________________________________________#
	#desenhar areia retangulo
	addi $9,$9,31744
	jal def_areia
#_________________________________________________________________________#
	#zerando contadores e lui para desenhar as torres da base
	addi $20,$0,0
	addi $21,$0,0
	lui $9,0x1001
	addi $9,$9,29732
	jal def_basefase1
#_________________________________________________________________________#
	lui $9,0x1001
	addi $9,$9,29800
	addi $20,$0,0
	addi $21,$0,0
	jal def_basefase1
#_________________________________________________________________________#
	lui $9,0x1001
	addi $9,$9,29868
	addi $20,$0,0
	addi $21,$0,0
	jal def_basefase1
#_________________________________________________________________________#
	lui $9,0x1001
	addi $9,$9,30008
	addi $20,$0,0
	addi $21,$0,0
	jal def_basefase1
#_________________________________________________________________________#
	lui $9,0x1001
	addi $9,$9,30076
	addi $20,$0,0
	addi $21,$0,0
	jal def_basefase1
#_________________________________________________________________________#
	lui $9,0x1001
	addi $9,$9,30144
	addi $20,$0,0
	addi $21,$0,0
	jal def_basefase1
#_________________________________________________________________________#
	#zerando contadores e lui para desenhar a parte a parte de baixo das torres
	lui $9,0x1001
	addi $9,$9,29940
	jal def_basedetiro
#_________________________________________________________________________#	
	lui $9,0x1001
	addi $9,$9,30448
	jal def_detalhetiro
#_________________________________________________________________________#
	lui $9,0x1001
	addi $9,$9,29436
	jal def_detalhetiro
#_________________________________________________________________________#
	lui $9,0x1001
	addi $9,$9,30472
	jal def_detalhetiro
#_________________________________________________________________________#
	#definindo que o $9 vai ser o ponteiro da mira forever e o $7 auxiliar
	lui $9,0x1001
	lui $7,0x1001
	addi $9,$9,25852
	addi $7,$7,26876
	j def_mira

#_________________________________________________________________________#
def_areia:

	sw $31,0($29)
	beq $20,1020,voltar
	addi $11,$0,0xFFEFC6 
	sw $11,0($9)
	addi $9,$9,4
	addi $20,$20,1
j def_areia
#_________________________________________________________________________#
def_basefase1:

	sw $31,0($29)
	addi $11,$0,0x0419FF
	sw $11,0($9)
	addi $9,$9,512
	sw $11,0($9)
	addi $9,$9,8
	sw $11,0($9)
	addi $9,$9,8
	sw $11,0($9)
	addi $9,$9,492
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,8
	sw $11,0($9)
	addi $9,$9,8
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,484
#_________________________________________________________________________#

whilebase1:

	beq $20,20,voltar
	beq $21,10,quebrar
	addi $11,$0,0x0419FF
	sw $11,0($9)
	addi $9,$9,4
	addi $20,$20,1
	addi $21,$21,1
	j whilebase1
	quebrar:
	addi $9,$9,472
	addi $21,$0,0
	j whilebase1
#_________________________________________________________________________#

def_basedetiro:

	sw $31,0($29)
	addi $11,$0,0xFFEFC6 
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,492
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,484
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,476
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	addi $9,$9,4
	sw $11,0($9)
	j voltar 
#_________________________________________________________________________#

def_detalhetiro:

	sw $31,0($29)
	addi $11,$0,0x0419FF
	sw $11,0($9)
	addi $9,$9,512
	sw $11,0($9)
	addi $9,$9,512
	sw $11,0($9)
	addi $9,$9,508
	sw $11,0($9)
	jr $31
#_________________________________________________________________________#
def_mira:

	addi $11,$0,0xFFFFFF
	sw $11,0($9)
	addi $10,$0,0
	j def_meteoros
#_________________________________________________________________________#

defobomb:

	addi $11,$0,0xFFF000
	sw $11,0($7)
	addi $7,$7,508
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,500
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,500
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,508
	sw $11,0($7)
	addi $4,$0,0
	addi $27,$0,6
	addi $7,$7,-2048
	j descer
#_________________________________________________________________________#
obomb6:

	addi $11,$0,0x0419FF
	sw $11,0($7)
	addi $7,$7,508
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,500
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,500
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,508
	sw $11,0($7)
	addi $4,$0,0
	addi $27,$0,5
	addi $7,$7,-2048
	j descer
#_________________________________________________________________________#
obomb5:

	addi $11,$0,0xFF0009
	sw $11,0($7)
	addi $7,$7,508
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,500
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,500
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,508
	sw $11,0($7)
	addi $4,$0,0
	addi $27,$0,4
	addi $7,$7,-2048
	j descer
#_________________________________________________________________________#

obomb4:
	addi $11,$0,0xFFF000
	sw $11,0($7)
	addi $7,$7,508
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,500
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,500
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,508
	sw $11,0($7)
	addi $4,$0,0
	addi $27,$0,3
	addi $7,$7,-2048
	j descer
#_________________________________________________________________________#
obomb3:
	addi $11,$0,0x0419FF
	sw $11,0($7)
	addi $7,$7,508
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,500
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,500
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,508
	sw $11,0($7)
	addi $4,$0,0
	addi $27,$0,2
	addi $7,$7,-2048
	j descer
#_________________________________________________________________________#
obomb2:
	addi $11,$0,0xFF0009
	sw $11,0($7)
	addi $7,$7,508
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,500
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,500
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,508
	sw $11,0($7)
	addi $4,$0,0
	addi $27,$0,1
	addi $7,$7,-2048
	j descer
#_________________________________________________________________________#

obomb1:

	addi $11,$0,0x000000
	sw $11,0($7)
	addi $7,$7,508
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,500
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,500
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,4
	sw $11,0($7)
	addi $7,$7,508
	sw $11,0($7)
	addi $4,$0,0
	addi $27,$0,0
	addi $7,$7,-2048
	sw $4, 4($22)
	j descer
#_________________________________________________________________________#

moveleft:

	addi $9,$9-8
	addi $7,$7,-8
	addi $11,$0,0xFFFFFF
	sw $11,0($9)
	addi $11,$0,0x000000
	sw $11,8($9)
	addi $4,$0,0
	sw $4, 4($22)
	j descer
#_________________________________________________________________________#

moverigth:

	addi $9,$9,8
	addi $7,$7,8
	addi $11,$0,0xFFFFFF
	sw $11,0($9)
	addi $11,$0,0x000000
	sw $11,-8($9)
	addi $4,$0,0
	sw $4, 4($22)
	j descer
#_________________________________________________________________________#

movedown:

	addi $19,$0,268526588
	slt $18,$19,$9
	beq $18,1,descer
	addi $9,$9,1024
	addi $7,$7,1024
	addi $11,$0,0xFFFFFF
	sw $11,0($9)
	addi $11,$0,0x000000
	sw $11,-1024($9)
	addi $4,$0,0
	sw $4, 4($22)
	j descer
#_________________________________________________________________________#

moveup:

	addi $9,$9,-1024
	addi $7,$7,-1024
	addi $11,$0,0xFFFFFF
	sw $11,0($9)
	addi $11,$0,0x000000
	sw $11,1024($9)
	addi $4,$0,0
	sw $4, 4($22)
	j descer
#_________________________________________________________________________#

acabou:

	lui $20,0x1001
	beq $24,0,gameover
	beq $24,3,vida2
	beq $24,2,vida1
	beq $24,1,vida0
#_________________________________________________________________________#

vida2:

	addi $24,$24,-1
	jal limparbase1
	j limpar
#_________________________________________________________________________#

vida1:

	addi $24,$24,-1
	jal limparbase2
	j limpar
#_________________________________________________________________________#

vida0:

	addi $24,$24,-1
	jal limparbase3
	j limpar
#_________________________________________________________________________#

gameover:

	lui $21,0x1001
	addi $11,$0,0xFFFFFF
	sw $11,16052($21)
	sw $11,16056($21)
	sw $11,16060($21)
	sw $11,16064($21)
	sw $11,16564($21)
	sw $11,17076($21)
	sw $11,17084($21)
	sw $11,17088($21)
	sw $11,17588($21)
	sw $11,17600($21)
	sw $11,18100($21)
	sw $11,18104($21)
	sw $11,18108($21)
	sw $11,18112($21)

	sw $11,16072($21)
	sw $11,16076($21)
	sw $11,16080($21)
	sw $11,16584($21)
	sw $11,16592($21)
	sw $11,17096($21)
	sw $11,17100($21)
	sw $11,17104($21)
	sw $11,17608($21)
	sw $11,17616($21)
	sw $11,18120($21)
	sw $11,18128($21)

	sw $11,16088($21)
	sw $11,16092($21)
	sw $11,16100($21)
	sw $11,16104($21)
	sw $11,16600($21)
	sw $11,16608($21)
	sw $11,16616($21)
	sw $11,17112($21)
	sw $11,17120($21)
	sw $11,17128($21)
	sw $11,17624($21)
	sw $11,17640($21)
	sw $11,18136($21)
	sw $11,18152($21)

	sw $11,16112($21)
	sw $11,16116($21)
	sw $11,16120($21)
	sw $11,16624($21)
	sw $11,17136($21)
	sw $11,17140($21)
	sw $11,17648($21)
	sw $11,18160($21)
	sw $11,18164($21)
	sw $11,18168($21)


	sw $11,16136($21)
	sw $11,16140($21)
	sw $11,16644($21)
	sw $11,16656($21)
	sw $11,17156($21)
	sw $11,17168($21)
	sw $11,17668($21)
	sw $11,17680($21)
	sw $11,18184($21)
	sw $11,18188($21)

	sw $11,16152($21)
	sw $11,16168($21)
	sw $11,16664($21)
	sw $11,16680($21)
	sw $11,17176($21)
	sw $11,17192($21)
	sw $11,17692($21)
	sw $11,17700($21)
	sw $11,18208($21)

	sw $11,16176($21)
	sw $11,16180($21)
	sw $11,16184($21)
	sw $11,16688($21)
	sw $11,17200($21)
	sw $11,17204($21)
	sw $11,17712($21)
	sw $11,18224($21)
	sw $11,18228($21)
	sw $11,18232($21)


	sw $11,16192($21)
	sw $11,16196($21)
	sw $11,16200($21)
	sw $11,16704($21)
	sw $11,16712($21)
	sw $11,17216($21)
	sw $11,17220($21)
	sw $11,17224($21)
	sw $11,17728($21)
	sw $11,17736($21)
	sw $11,18240($21)
	sw $11,18252($21)
	addi $2,$0,10
	syscall
#_________________________________________________________________________#
	#corpo do jogo
def_meteoros:

	addi $5, $1, 254
	addi $2, $0, 42
	syscall
	addi $16,$4,0
	div $17,$16,4
	mfhi $17
	beq $17,$0,addrandom
	addi $4,$17,0
	addi $2,$0,1
	syscall
	j def_meteoros
#_________________________________________________________________________#

addrandom:

	add $8,$8,$16
	descer:
	beq $10,22000,desenhar
	addi $10,$10,1
	j descer
#_________________________________________________________________________#
desenhar:

	addi $19,$0,268529664
	slt $18,$19,$8
	beq $18,1,acabou
	
	addi $11,$0,0xFF0009
	sw $11,0($8)
	addi $8,$8,516
	lw $26,0($8)
	beq $26,0x0419FF,limpar
	beq $26,0xFFF000,limpar
	beq $26,0xFF0009,limpar
	addi $10,$0,0
	beq $27,6,obomb6
	beq $27,5,obomb5
	beq $27,4,obomb4
	beq $27,3,obomb3
	beq $27,2,obomb2
	beq $27,1,obomb1
#_________________________________________________________________________#
def_move:

	lw $4, 4($22)
	beq $4, 99, defobomb
	beq $4, 97, moveleft
	beq $4, 100, moverigth
	beq $4, 115, movedown
	beq $4, 119, moveup
	j descer
#_________________________________________________________________________#
limpar:

	beq $18,58,zerarmete
	addi $11,$0,0x000000
	sw $11,0($8)
	addi $8,$8,-516
	addi $18,$18,1
	j limpar
#_________________________________________________________________________#
zerarmete:

	addi $10,$0,0
	addi $18,$0,0
	lui $8,0x1001
	j def_meteoros
#_________________________________________________________________________#
voltar:
	lw $31,0($29)
	jr $31
#_________________________________________________________________________#

limparbase1:

	lui $12,0x1001
	addi $12,$12,29732
	sw $31,0($29)
	addi $11,$0,0x000000
	sw $11,0($12)
	addi $12,$12,512
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,492
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,484
	lui $12,0x1001
	addi $12,$12,29800
	sw $11,0($12)
	addi $12,$12,512
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,492
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,484
	lui $12,0x1001
	j voltar
#_________________________________________________________________________#
limparbase2:

	lui $12,0x1001
	addi $12,$12,29868
	sw $31,0($29)
	addi $11,$0,0x000000
	sw $11,0($12)
	addi $12,$12,512
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,492
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,484
	lui $12,0x1001
	addi $12,$12,30008
	sw $11,0($12)
	addi $12,$12,512
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,492
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,484
	lui $12,0x1001
	j voltar
#_________________________________________________________________________#
limparbase3:

	lui $12,0x1001
	addi $12,$12,30076
	sw $31,0($29)
	addi $11,$0,0x000000
	sw $11,0($12)
	addi $12,$12,512
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,492
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,484
	lui $12,0x1001
	addi $12,$12,30144
	sw $11,0($12)
	addi $12,$12,512
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,492
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,8
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,4
	sw $11,0($12)
	addi $12,$12,484
	lui $12,0x1001
	j voltar
#_________________________________________________________________________#
