# Peça uma temperatura em graus Celsius e converta para Fahrenheit.
echo "===================================="
read -p "Informe a temperatura em Celsius: " cel

fah=$(echo "($cel * 9/5) + 32)" | bc)

clear
echo "Resultado:"
echo "$cel Cº em Fahrenheit é: $fah"