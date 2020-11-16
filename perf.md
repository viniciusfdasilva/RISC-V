# Informações sobre o perf

* Ferramenta de análise de desempenho - recursos e as tarefas que eles nos permitem executar em um determinado período de tempo:
    * Contadores de desempenho de hardware;
    * Pontos de rastreamento - ftrace:
        * Rastreio de eventos de agendamento;
        * Rastreio de interrupções;
        * Rastreio de E/S mapeadas na memória;
        * Rastreio de transições de estado de energia da CPU;
        * Rastreio de operações relacionadas a sistemas de arquivo e virtualização.
    * Contadores de desempenho em software;
* O perf consiste em uma syscall feita através de um descritor de arquivos e uma região de memória mapeada.
* O perf fornece acesso à Unidade de Monitoramento de Desempenho na CPU.
* Além do monitoramento dos eventos, é possível criar relatórios com os dados coletados.

### Subcomandos
Comandos mais utilizados:


![](Comandos_perf.png)


![](Comandos_perf_2.png)


### Perf tools


![Fonte: https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.slideshare.net%2Fbrendangregg%2Fvelocity-2015-linux-perf-tools&psig=AOvVaw3QbqpdDROslyhwFAQjUMud&ust=1605640275736000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPjsqKTih-0CFQAAAAAdAAAAABAR](perf_tools.jpg)


### Fontes:

* https://en.wikipedia.org/wiki/Perf_(Linux)
* https://en.wikipedia.org/wiki/Ftrace
* https://en.wikipedia.org/wiki/System_call
* https://en.wikipedia.org/wiki/File_descriptor
* https://perf.wiki.kernel.org/index.php/Main_Page
* https://perf.wiki.kernel.org/index.php/Tutorial
* https://www.tecmint.com/perf-performance-monitoring-and-analysis-tool-for-linux/
