# Crie um programa que defina um número secreto e peça ao usuário para adivinhar. Dê uma dica se o número digitado for maior ou menor.
numSecreto=$((RANDOM % 100 + 1))
tentativas=0
acertou=false

while [ "$acertou" = false ]; do
    echo "============================"
    read -p "Digite um numero: " num
    ((tentativas++))

    clear
    if((num == numSecreto)); then
        acertou=true
    elif((num > numSecreto)); then
        echo "Numero muito alto!"
        echo "Tente novamente!"
    else
        echo "Numero muito baixo!"
        echo "Tente novamente!"
    fi
done

clear
echo "PARABENS!! voce acertou"
echo "voce acertou em $tentativas"