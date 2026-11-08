# Processos e Sistema no Linux Ubuntu

### Objetivo
* Entender como visualizar e gerenciar processos no Linux.
* Monitorar o uso de CPU, memória e disco.
* Encerrar processos quando necessário.

---

## Visualizando Processos

### Listar processos do usuário
* **Comando:** `ps`
* **Explicação:** Mostra os processos em execução no terminal atual.

### Lista detalhada de todos os processos
* **Comando:** `ps aux`
* **Explicação:** Exibe todos os processos rodando no sistema, com detalhes como usuário, PID (ID do processo), uso de CPU/memória.

### Filtrar por nome
* **Comando:** `ps aux | grep nome`
* **Explicação:** Mostra apenas processos que contenham a palavra buscada.

---

## Monitorando o Sistema

### Monitor interativo
* **Comando:** `top`
* **Explicação:** Mostra os processos em tempo real, consumo de CPU e memória.

- **k** → encerrar processo (digite PID)
Digite o PID do processo
Depois digite “kill”

#### Versão melhorada (se disponível)
* **Comando:** `htop`
* **Explicação:** Interface mais amigável que top (pode precisar instalar: sudo apt install htop).

### Tempo ligado (uptime)
* **Comando:** `uptime`
* **Explicação:** Mostra há quanto tempo o sistema está ligado, usuários conectados e carga média do sistema.

---

## Encerrando Processos

### Encerrar pelo PID
* **Comando:** `kill PID`
* **Explicação:** Encerra um processo a partir do seu número de identificação (PID).
* **Exemplo:** `kill 1234`

### Encerramento forçado
* **Comando:** `kill -9 PID`
* **Explicação:** Força a finalização do processo.


### Encerrar por nome
* **Comando:** `pkill nome_do_processo`
* **Explicação:** Encerra todos os processos que correspondem ao nome informado.

---

## Monitorando Recursos do Sistema

### Espaço em disco
* **Comando:** `df -h`
* **Explicação:** Mostra o uso do disco, com valores em MB/GB.


### Uso de memória por pasta
* **Comando:** `du -sh nome_da_pasta`
* **Explicação:** Mostra quanto espaço uma pasta está ocupando.

### Memória RAM
* **Comando:** `free -h`
* **Explicação:** Mostra a quantidade de memória livre, usada e cache.
