#Comparações em Bash

#========================
# -eq : igual a
# -ne : diferente de
# -lt : menor que
# -le : menor ou igual a
# -gt : maior que
# -ge : maior ou igual a 
#========================
#Exemplo
num1=10
num2=20

if [$num1 -lt $num2]; then
    echo "Numero 1 é menor que numero 2"
fi

#=============================
# PARA STRINGS

$str1="Sistemas"
$str2="Operacionais"

if [[ "$str1" < "$str2" ]]; then
    echo "A string 1 é menor que a string 2"
fi

#=============================
# Operadores Logicos
a=1
b=0
if ["$a" -gt 0] && ["$b" -gt 0]; then
    echo "Ambos são positivos"
fi

#=============================
# Operadores de Arquivos
# -e : verifica se o arquivo existe
# -d : verifica se é um diretório
# -f : verifica se é um arquivo comum (regular)
# -s : verifica se o arquivo não está vazio

# Exemplo
if [ -e "arquivo.txt" ]; then
    echo "arquivo.txt existe"
elif [ -s "arquivo.txt"]; then
    echo "arquivo.txt não esta vazio"
else
    echo "arquivo.txt não existe"
fi