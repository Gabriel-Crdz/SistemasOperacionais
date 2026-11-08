# Peça dois números e mostre a soma, subtração, multiplicação e divisão.
echo "=============================="
read -p "Digite um numero: " num1
read -p "Digite outro numero: " num2

soma=$(echo "$num1 + $num2" | bc)
sub=$(echo "$num1 - $num2" | bc)
multi=$(echo "$num1 * $num2" | bc)
div=$(echo "$num1 / $num2" | bc)

clear
echo "Resultado:"
echo "A soma é: $soma" 
echo "A subtração é: $sub" 
echo "A multiplicação é: $multi" 
echo "A divisão é: $div" 
echo "=============================="

