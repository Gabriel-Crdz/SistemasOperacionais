# Estruturas do Sistema Operacional

**kernel:** um conjunto de rotinas que **oferece serviços aos usuários e às suas aplicações**. Esse
conjunto de rotinas é denominado também de núcleo do sistema.

A maioria dos sistemas operacionais é fornecida acompanhada de utilitários e linguagem de comandos, 
que são **ferramentas de apoio ao usuário**, porém não são parte do núcleo do sistema.

[Estrutura do sistema](./img/figura1.png)

* **Funções do Núcleo**
    - tratamento de interrupções e exceções
    - criação e eliminação de processos e threads
    - sincronização e comunicação entre processos e threads
    - escalonamento e controle dos processos e threads
    - gerência de memória
    - gerência do sistema de arquivos
    - gerência de dispositivos de E/S
    - suporte a redes locais e distribuídas
    - contabilização do uso do sistema
    - auditoria e segurança do sistema

---

## Modo de Acesso

**Mecanismos de proteção e segurança ao núcleo do sistema** e de acesso aos seus serviços e proteger a integridade
Em geral, os processadores possuem dois modos de acesso
* **Modo usuário**
* **Modo kernel.**

Esses modos determinam os privilégios que um processo tem ao executar no sistema.

### Modo Usuario

É o modo no qual **programas de usuários e aplicativos comuns são executados**

Possui **restrições de acesso** para evitar que aplicações modifiquem áreas críticas do sistema

O processador tem **acesso limitado a recursos como memória**,
dispositivos de hardware e instruções privilegiadas.

Se um programa precisar interagir com o sistema operacional (por
exemplo, acessar arquivos ou dispositivos), ele deve solicitar essa
operação através de uma **chamada de sistema (syscall)**.

#### Características

- **Restrito:** O programa não pode acessar diretamente o hardware ou a memória de outros processos.
- **Seguro:** Evita que falhas de aplicativos afetem o funcionamento do sistema.
- **Limitado:** Para acessar recursos críticos, precisa chamar o sistema operacional.

* **Exemplos:**
    - Navegadores de internet, editores de texto e jogos rodam no modo usuário.
    - Um aplicativo tentando acessar um arquivo faz isso chamando o sistema
operacional (syscall).

### Modo Kernel

É um **nível privilegiado de execuçã**o no qual o sistema operacional tem controle total sobre o hardware

Processos executando nesse modo **podem acessar diretamentea memória,**
**dispositivos de entrada/saída e instruções privilegiadas do processador**

Apenas o núcleo do sistema operacional e drivers de
dispositivo são executados nesse modo.

#### Características
- **Acesso Total:** Controle sobre a CPU, memória, discos, dispositivos de
entrada/saída e rede;
- **Executa o Kernel do SO:** Permite gerenciar recursos e responder às
chamadas do usuário;
- **Risco de Falhas:** Erros no modo kernel podem causar falhas graves no
sistema (exemplo: tela azul no Windows).

* Exemplos
    - O gerenciamento de memória e processos ocorre no modo kernel;
    - Drivers de dispositivos, como os que controlam o teclado e o disco rígido,
operam nesse modo.

## Linguagem de comando

A linguagem de comandos, ou linguagem de controle, 
permite que ao usuário executar diversas tarefas como criar,
ler ou eliminar arquivos, consultar diretórios ou verificar a data e a hora armazenadas no sistema.

As linguagens de comandos evoluíram no sentido de permitir ainteração mais amigável com os usuários, 
utilizando interfaces gráficas como janelas e ícones, a exemplo dos sistemas Windows.

[Interface com usuario](./img/figura2.png)