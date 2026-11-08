# Estruturas do Sistema Operacional

## Arquiteturas de Núcleo

### Arquitetura Monolítica

A arquitetura monolítica pode ser comparada com uma aplicação formada por vários módulos que 
são **compilados separadamente e depois linkados**, formando um **grande e único programa**
executável, onde os **módulos podem interagir livremente**
(adotada pelo MS-DOS e primeiras versões do UNIX)

Sempre que uma aplicação desejar algum serviço do sistema, deve
ser realizada uma chamada a **uma de suas rotinas através de uma system call**;

O **system call** podem ser entendidos como uma porta de entrada
para o núcleo do S.O. e a seus serviços.

[Monolitica](./img/figura3.png)

### Arquitetura de Camadas

O sistema é dividido em **níveis sobrepostos**. 

Cada camada oferece um **conjunto de funções que podem ser utilizadas apenas pelas camadas superiores.**

[camadas](./img/figura4.png)

### Máquina Virtual

O modelo de máquina virtual, ou virtual machine (VM), cria
um **nível intermediário entre o hardware e o sistema**
operacional, denominado gerência de máquinas.

Este nível cria **diversas máquinas virtuais independentes**, onde
cada uma **oferece uma cópia virtual do hardware**, incluindo os
modos de acesso, interrupções, dispositivos de E/S etc.

Este modelo cria o **isolamento total entre cada VM**,
oferecendo grande segurança para cada máquina virtual.

* **Vantagens:**
    - Portabilidade de código
    - Consolidação de servidores
    - Aumento da disponibilidade
    - Facilidade de escalabilidade e balanceamento de carga
    - **Facilidade no desenvolvimento de software:** as VMs permitem a criação de um ambiente independente para o desenvolvimento e teste de software sem o comprometimento das máquinas de produção.

[VM](./img/figura5.png)

### MicroKernel

Núcleo do sistema operacional **o menor e mais simples possível**

Os serviços do sistema são **disponibilizados através de processos**

Sempre que uma aplicação deseja algum s**erviço (Cliente)**, é
realizada uma **solicitação ao processo responsável (Servidor)**

A solicitação e a resposta é realizada **troca de mensagens entre cliente e servidor**

A principal **função do núcleo é realizar a comunicação**.

[Microkernel](./img/figura6.png)

### Arquiteturas dos Principais Sistemas 

| Sistema Operacional | Arquitetura do Núcleo | Descrição |
|---------------|------------------------|-------------|
| Windows (10/11) | Híbrido | Combina características de núcleo monolítico e microkernel. Alta compatibilidade e desempenho. |
| Linux | Monolítico Modular | Todos os serviços rodam no mesmo espaço de endereçamento, mas com módulos carregáveis dinamicamente. |
| macOS | Híbrido XNU | Base Mach microkernel + componentes Berkeley Software Distribution (BSD) monolíticos(variante do Unix desenvolvida na Universidade da Califórnia, Berkeley). Android Monolítico (Linux) Baseado no kernel Linux, adaptado para dispositivos móveis. |
| iOS | Híbrido XNU | Mesmo núcleo do macOS, otimizado para dispositivos móveis.|