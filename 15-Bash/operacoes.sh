#!/bin/bash
#=============================
#Script: operacoes.sh
#Demostra as operaçoes basicas
# Autor: Gabriel S. Cardozo
#=============================
enter(){
    read -p "Pressione ENTER"
}

echo "Diretorio Atual"
pwd
echo

#Criar um diretorio de trabalho
echo "Criando um diretorio 'meu_projeto'..."
mkdir meu_projeto
echo "Diretorio Criado"
enter

#Entrar no diretorio criado
echo "Entrando no diretorio"
cd meu_projeto || exit
echo "Agora estamos em ..."
pwd
enter

#Criar tres arquivos vazios
echo "Criando tres arquivos txt"
touch arquivo1.txt arquivo2.txt arquivo3.txt
enter

#Listar diretorio
echo "Listando diretorio"
ls -l
enter

#Escrever texto em um arquivo
echo "Escrevendo um texto em um arquivo"
echo "Texto de Exemplo" > arquivo3.txt
enter

#Exibir o conteudo  do arquivo
echo "Exibindo o conteudo do arquivo"
cat arquivo3.txt
enter

#Renomear arquivo
echo "Renomeando arquivo"
mv arquivo2.txt notas.txt
ls
enter

#Criar um backup
echo "Criando backup"
mkdir backup
chmod +w backup/
mv arquivo1.txt backup/
enter

#Mostrar a estrutura
echo "Mostrando a estrutura"
ls -R
enter

#Remover arquivos
echo "Removendo arquivos"
rm arquivo3.txt
ls
enter

#Apagar diretorio
echo "Apagando o diretorio"
cd ..
rm -r meu_projeto

echo "====FIM===="
