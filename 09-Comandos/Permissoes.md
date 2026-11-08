# Permissões e Usuários no Linux Ubuntu

### Objetivo
* Compreender o sistema de permissões do Linux.
* Identificar e modificar permissões de arquivos e diretórios.
* Reconhecer o usuário atual e grupos.

---

## Identificando Usuário e Grupos

### Usuário atual
* **Comando:** `whoami`
* **Explicação:** Mostra qual usuário está logado no momento. responde “quem sou eu?”

- **Comando:** `who`
- **Explicação:** usuários logados no momento. responde “quem está no sistema?”

### Informações do usuário
* **Comando:** `id`
* **Explicação:** Exibe o ID do usuário, grupo principal e grupos adicionais.

Complementos:
- `id -u` → mostra apenas o UID.
- `id -g` → mostra apenas o GID primário.
- `id -G` → mostra todos os GIDs (grupos) do usuário.
- `id -nG` → mostra apenas os nomes dos grupos.
- `id nome_usuario` → mostra as informações de um usuário específico.

### Listar grupos do usuário
* **Comando:** `groups`
* **Explicação:** Mostra todos os grupos aos quais o usuário pertence.

- **Comando:** `groups nome_usuario`
- **Explicação:** Mostra todos os grupos de um usuário.

### Listar todos os usuários do sistema 
* **Todos os usuários** → `cat /etc/passwd`
* **Só nomes** → `cut -d: -f1 /etc/passwd`
* **Usuários humanos (UID ≥ 1000**) → `awk -F: '$3>=1000{print $1}' /etc/passwd`
* **Logados agora** → `who ou users`
* **Histórico de login** → `last`

---
## Permissões de Arquivos e Diretórios

### Listar permissões
* **Comando:** `ls -l`
* **Explicação:** Mostra arquivos com detalhes, incluindo permissões.

- Exemplo de saída:
    * -rw-r--r--  1 aluno aluno  1200 set 15 10:00 anotacoes.txt

O que significa:
* **rw-** → dono pode ler e escrever.
* **r--** → grupo pode apenas ler.
* **r--** → outros usuários podem apenas ler.
* **aluno** → dono aluno
* **aluno** → grupo aluno
* **1200** → tamanho wm bytes
* **set 15 10:00** → data da ultima modificação

### Alterar permissões
* **Comando:** `chmod`
* **Explicação:** Modifica permissões de leitura (r), escrita (w) e execução (x).

#### Modo simbólico (mais intuitivo)
Você usa letras para indicar quem e quais permissões modificar.
- **Quem (alvo):**
    * **u** → usuário dono (user)
    * **g**→ grupo (group)
    * **o** → outros (others)
    * **a** → todos (all)
- **Operadores:**
    * **+** → adiciona permissão
    * **-** → remove permissão
    * **=** → define exatamente a permissão (substitui)
- **Permissões:**
    * **r** → leitura (read)
    * **w** → escrita (write)
    * **x** → execução (execute)

**Exemplos:**

```bash
chmod u+x script.sh    # adiciona execução ao dono
chmod g-w arquivo.txt  # remove escrita do grupo
chmod o=r arquivo.txt  # define que outros só podem ler
chmod a+r arquivo.txt  # todos podem ler

```
#### Modo numérico (octal)
Usa números para representar permissões.
- **Cada permissão tem um valor:**
    * **r** = 4
    * **w** = 2
    * **x** = 1

Soma os valores para cada categoria (**usuário, grupo, outros**).
- **Exemplo de combinação:**
    * 7 = rwx (4+2+1)
    * 6 = rw- (4+2)
    * 5 = r-x (4+1)
    * 4 = r-- (somente leitura)

**Uso:** chmod 755 programa.sh
- 7 → dono: rwx
- 5 → grupo: r-x
- 5 → outros: r-x
* Arquivo ficará com: -rwxr-xr-x

### Alterar dono do arquivo
* **Comando:** `chown usuario:grupo arquivo`
* **Explicação:** Muda o dono e/ou grupo de um arquivo.

---

## 3. Criando e Explorando Arquivos de Teste
### Criar um script simples
* **Comando:** `echo "echo 'Olá Linux!'" > teste.sh`

### Dar permissão de execução
* **Comando:** `chmod +x teste.sh`

### Executar o script
* **Comando:** `./teste.sh`
