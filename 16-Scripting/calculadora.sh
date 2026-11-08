read -p "Digite o primeiro numero: " num1
read -p "Digite o segundo numero: " num2

#bc - calculadora basica
# soma=$((num1 + num2)) # Para inteiros
soma=$(echo "$num1" + "$num2" | bc) # Para Decimais
subtracao=$(echo "$num1" - "$num2" | bc)
divisao=$(echo "$num1" / "$num2" | bc)
multiplicao=$(echo "$num1" * "$num2" | bc)

echo "Soma: $soma"
echo "Subtração: $subtracao"
echo "Multiplição: $multiplicacao"
echo "Divisão: $divisao"