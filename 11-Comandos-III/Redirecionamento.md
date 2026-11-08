# Redirecionamentos e Pipes no Linux Ubuntu

### Objetivo
* Aprender a redirecionar a saída e entrada de comandos para arquivos.
* Utilizar pipes (|) para encadear comandos.
* Manipular conteúdo de arquivos de forma prática.

---

## Redirecionamentos de Saída

### Sobrescrever arquivo
* **Comando:** `>`
* **Explicação:** Redireciona a saída de um comando para um arquivo, sobrescrevendo o conteúdo existente.
* **Exemplo:** `echo "Primeira linha" > arquivo.txt`

### Acrescentar ao final
* **Comando:** `>>`
* **Explicação:** Redireciona a saída de um comando para um arquivo, adicionando ao final sem apagar o conteúdo anterior.
* **Exemplo:** `echo "Segunda linha" >> arquivo.txt`

### Redirecionar erros
* **Comando:** `2>`
* **Explicação:** Redireciona mensagens de erro para um arquivo.
* **Exemplo:** `ls pasta_inexistente 2> erros.txt`

### Redirecionamento de Entrada
* **Comando:** `<`
* **Explicação:** Usa o conteúdo de um arquivo como entrada de um comando.
* **Exemplo:** `wc -l < arquivo.txt` - Conta quantas linhas existem em arquivo.txt.

## Pipes (|)
### Encadeando comandos
* **Comando:** `|`
* **Explicação:** Passa a saída de um comando como entrada de outro.
* **Exemplo:** `ls -l | grep ".txt"` - Mostra apenas os arquivos .txt.

---

## Comandos Úteis com Pipes

### Mostrar primeiras linhas
* **Comando:** `head`
* **Explicação:** Mostra as primeiras 10 linhas de um arquivo (ou saída de comando).
* **Exemplo:** `cat arquivo.txt | head`

### Mostrar últimas linhas
* **Comando:** `tail`
* **Explicação:** Mostra as últimas 10 linhas.
* **Exemplo:** `cat arquivo.txt | tail`

### Contar linhas, palavras e caracteres
* **Comando:** ``wc`
* **Explicação:** Conta linhas, palavras e caracteres de um arquivo.
* **Exemplo:** `wc arquivo.txt`

### Buscar texto dentro de arquivos
* **Comando:** `grep`
* **Explicação:** Procura por palavras ou padrões em arquivos.
* **Exemplo:** `grep "Linux" arquivo.txt` , `grep -ri “texto”` - Procura recursiva e ignora case na busca por palavras em arquivos.
