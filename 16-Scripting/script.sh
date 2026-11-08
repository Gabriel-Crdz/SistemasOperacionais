# Leitura de dados do usuario
read -p "Digite seu nome: " nome
read -p "Digite seu sobrenome: " sobrenome
read -p "Digite sua idade: " idade

echo "Ola $nome$sobrenome, sua idade é $idade"

#Variaveis Globais e locais
variavel="Global"

function imprimir(){
    local variavel="Local"
    echo $variavel
}
imprimir
echo $variavel
