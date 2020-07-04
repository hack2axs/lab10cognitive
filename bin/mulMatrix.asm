
# Definición de las dimensiones de las Matrices

addi $s4,$zero,2  # Arow <- $s4
addi $s5,$zero,2  # Acol <- $s5
addi $s6,$zero,2  # Brow <- $s6
addi $s7,$zero,2  # Bcol <- $s7

# Asignar Direcciones Base de las Matrices

addi $s1,$zero,0x00 # Dirección Base A
addi $s2,$zero,0x20 # Dirección Base B
addi $s3,$zero,0x20 # Dirección Base C

addi $t1,$zero,0
addi $t2,$zero,0
addi $t3,$zero,0
addi $t4,$zero,0

# Loops
Inicio:
    beq $s5,$s6,Loop
    j Fin

    Loop_Arow:
        beq $t1,$s4,Fin  # if (Arow_Ind < Arow)

        Loop_Bcol:
            beq $t2,$s7,Fin_Loop_Bcol  # if (Bcol_Ind < Bcol)

            j Loop_Bcol_Ind

        Fin_Loop_Bcol:
        addi $t1,$t1,4
        j Loop_Arow
Fin:
    nop





















