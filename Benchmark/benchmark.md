# Benchmark
* Este arquivo contém uma pesquisa feita a respeito do que são benchmarcks a fim de colher informações necessárias para desenvolvimento do módulo de análise de desempenho da RISCV Virtual Machine. As fontes utilizadas estão citadas no fim do texto.

### O que é benchmark
Comparação de performance entre dispositivos, com inúmeros tipos de testes e análises de dados coletados. Existe dois tipos de testes que podem ser realizados com benchmarks:
* **Testes com benchmarks sintéticos:** utilização de programas que estimulam um certo tipo de comportamento desejado. Útil para análise em cenários mais específicos.
* **Testes com benchmarks de aplicação:** execução de testes mais próximos do que acontece no mundo real. Teste que consegue identificar a capacidade real do hardware/software.
É aconselhável que no momento da execução dos testes, apenas a aplicação que está sendo testada esteja em execução para que outros aplicativos consumindo o hardware não comprometam os resultados obtidos.

### Benchmarks open source
* **miniBench:** um benchmark compreensível em linha de comando escrito em C++. MiniBench é multi-plataforma e contêm mais de 90 testes diferentes. MiniBench está disponível em OpenSourceMark.
* **TPoX:** um benchmark processador de transações XML para banco de dados em XML databases
* **Dhrystone:** Performance da aritmética inteira
* **Fhourstones:** um benchmark de inteiros
* **Whetstone:** Performance da aritmética de ponto flutuante
* **ApFloat:** ponto flutuante
* **LINPACK / LAPACK**
* **OpenSourceMark:** um poderoso, compreensível conjunto de benchmarks e utilidades de sistema com código-fonte aberto escrito em Delphi. OpenSourceMark tem uma GUI amigável e apresenta uma visualização flexível do resultado.
* **MemPerf:** banda de memoria
* **LLCBench:** um grupo de benchmark para cache, MPI, etc.
* **NAS parallel benchmarks**
* **PAL:** um benchmark para engines físicas em tempo real
* **Povray:** renderizador 3D
* **Bonnie++:** Arquivo Entrada/Saída
* **HINT:** raqueia o sistema computacional como um todo.
* **MediaBench:** Benchmark suite for multimedia systems.

### Fontes
* https://canaltech.com.br/hardware/o-que-e-benchmark-26350/
* https://pt.wikipedia.org/wiki/Benchmark_(computa%C3%A7%C3%A3o)
