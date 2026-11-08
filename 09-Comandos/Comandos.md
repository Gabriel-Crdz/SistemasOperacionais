# Comandos Básicos no Linux Ubuntu

### Objetivo:
Entender e executar comandos básicos de navegação, 
listagem de arquivos e manipulação de diretórios.

### Terminal
Principal interface para os comandos do Linux.

* **Comando:** Ctrl + Alt + T

---

## Comandos de Navegação

### Ver diretório atual
* **Comando:** `pwd`
* **Explicação:** Mostra o caminho completo do diretório em que você está.

### Listar arquivos e pastas
* **Comando:** `ls`
* **Explicação:** Lista os arquivos e diretórios da pasta atual.

#### Opções úteis:

* `ls -l` → lista em formato detalhado
* `ls -a` → mostra arquivos ocultos
* `ls -lR` → saída recursiva com detalhes (permissões, dono, data, etc.).
* `ls -lhR` → idem, mas com tamanhos legíveis (KB, MB).
* `ls -aR` → inclui arquivos ocultos (arquivos que começam com ponto).
* `ls *` → expande os arquivos e pastas do diretório atual (e mostra o conteúdo das pastas, mas só um nível).
* `ls *.ext` → lista apenas os arquivos que batem com o padrão.

### Entrar em diretório
* **Comando:** `cd nome_da_pasta`
* **Explicação:** Navega para outro diretório.

### Voltar para a pasta anterior
* **Comando:** `cd ..`
* **Explicação:** Volta um nível na hierarquia de diretórios.

---

## Manipulação de Diretórios

### Criar pasta
* **Comando:** `mkdir nome_da_pasta`
* **Explicação:** Cria uma nova pasta.

### Remover pasta 
* **Comando:** `rmdir nome_da_pasta`
* **Explicação:** Remove um diretório vazio.


- **Comando:** `rm -r nome_da_pasta`
- **Explicação:** Remove um diretório com arquivos dentro.

* **Comando:** `rm -rf nome_da_pasta`
* **Explicação:** (force) Remove um diretório com arquivos dentro. Ignora avisos e a confirmação.

- **Comando:** `rm -ri nome_pasta`
- **Explicação:** recursivo, pede confirmação antes de apagar cada arquivo e subpasta.

---

## Manipulação de Arquivos

### Criar arquivo vazio
* **Comando:** `touch nome_do_arquivo.txt`
* **Explicação:** Cria um arquivo vazio.

### Editar arquivo
* **Comando:** `nano nome_do_arquivo.txt`
* **Explicação:** abre um editor de texto.

### Exibir conteúdo de arquivo
* **Comando:** `cat nome_do_arquivo.txt`
* **Explicação:** Mostra o conteúdo do arquivo no terminal.


### Remover arquivo
* ***Comando:** `rm nome_do_arquivo.txt`
* **Explicação:** Remove o arquivo.

- **Comando:** `rm -i nome_do_arquivo.txt`
- **Explicação:** se quiser confirmar antes de cada exclusão

## Ajuda do Sistema
* **Comando:** `man comando`
* **Explicação:** Mostra o manual de um comando.
* **Exemplo:** `man ls`

