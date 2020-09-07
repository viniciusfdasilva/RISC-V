# Informações principais RISC-V 💻️
* Porcessador open source de 32, 64 e 128 bits para uso geral;

### Instruções
* Seis tipos de instruções na **ISA RV32I**:

**R** | **I** | **S** | **B** | **U** | **J**
:------: | :------: | :------: | :------: | :------: | :------: |
Operações com registradores | Valores imediatos short e loads  | Stores | Desvios condicionais | Imediatos longos | Saltos Incondicionais
	
![Formato das instruções para cada um dos 6 tipos](https://github.com/DayaneCordeiro/RISC-V_Core/blob/master/Imagens/Formato%20das%20instru%C3%A7%C3%B5es%20RISC%20V.png)


* Para essa ISA, existe um total de 47 instruções gerais, podendo-se reduzir a 38 (removendo-se algumas instruções como FENCE, ECALL, EBREAK e as instruções CSRxx)
* Além das instruções da ISA, exitem extensões de multiplicação e divisão (M) e operações atômicas (A)

* **Tipo M (Formato R)**


![Instruções do tipo M](https://github.com/DayaneCordeiro/RISC-V_Core/blob/master/Imagens/Tipo%20M.png)


* As 47 Instruções de propósito geral da ISA RV32I
![Tabela de isntruções ISA RV32I]()


#### Divisão dos bits nas instruções
Na ISO RV32I, A divisão entre os bits para atender aos seis tipos de instrução é:
* FUNCT 7			0xfe000000
* RS 1				0x000f8000
* RS 2				0x01f00000
* FUNCT 3			0x00007000
* RD				0x00000f80
* OPCODE			0x0000007f
* IMMEDIATE I-TYPE		0xfff00000
* IMEDDIATE S/B-TYPE 1		0xfe000000 <- pode ser tratado com o código do FUNCT 7
* IMEDDIATE S/B-TYPE 2		0x00000f80 <- pode ser tratado com o código do RD
* IMMEDIATE U/J-TYPE		0xfffef000


![Representação dos bits de cada divisão essencial da instrução](https://github.com/DayaneCordeiro/RISC-V/blob/master/Imagens/Representa%C3%A7%C3%A3o%20dos%20bits%20das%20instru%C3%A7%C3%B5es.png)


* **Tipo A (Formato R)**
	
	
![Isntruções do Tipo A](https://github.com/DayaneCordeiro/RISC-V_Core/blob/master/Imagens/Tipo%20A.png)

### Registradores

* Estão definidos 32 registradores de uso geral (x0 a x31), e o registrador para o PC

Nome do registrador | Nome alternativo | Descrição
:------: | :------: | :------:
x0 | zero | Sempre contem zero
x1 | ra | Endereço de retorno
x2 | sp | Apontador da pilha
x3 | gp | Apontador global
x4 | tp | Apontador de thread
x5 | t0 | Valores temporários/Endereço de retorno alternativo
x6 | t1 | Valores temporários
x7 | t2 | Valores temporários
x8 | s0/fp | Registrador salvo / Apontador de frame
x9 | s1 | Registrador salvo
x10 | a0 | Argumento de função / retorno de valores
x11 | a1 | Argumento de função / retorno de valores
x12 | a2 | Argumento de função
x13 | a3 | Argumento de função
x14 | a4 | Argumento de função
x15 | a5 | Argumento de função
x16 | a6 | Argumento de função
x17 | a7 | Argumento de função
x18 | s2 | Registrador salvo
x19 | s3 | Registrador salvo
x20 | s4 | Registrador salvo
x21 | s5 | Registrador salvo
x22 | s6 | Registrador salvo
x23 | s7 | Registrador salvo
x24 | s8 | Registrador salvo
x25 | s9 | Registrador salvo
x26 | s10 | Registrador salvo
x27 | s11 | Registrador salvo
x28 | t3 | Valores temporários
x29 | t4 | Valores temporários
x30 | t5 | Valores temporários
x31 | t6 | Valores temporários
pc | - | Contador de programa

### Opcodes para as instruções ISA RV32I
* **Tipo U:**
	* 0x37
	* 0x17
* **Tipo J:**
	* 0x6f
* **Tipo I:**
	* 0x67
	* 0x03
	* 0x13
	* 0x0f
	* 0x73
* **Tipo B:**
	* 0x63
* **Tipo S:**
	* 0x23
* **Tipo R:**
	* 0x33
	
### Identificação das instruções
* Uma isntrução do tipo R é identificada pelo opcode, funct_3 e funct_7 para os que tem funct_3 igual

### Links para continuar estudando
* https://www.embarcados.com.br/fe310g-microcontrolador-open-source-estrutura-basica-risc-v/#:~:text=RISC%2DV%20%C3%A9%20uma%20ISA,e%20o%20MIPS16e)%20al%C3%A9m%20de
* https://riscv.org/about/

		
