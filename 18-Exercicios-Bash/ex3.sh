# Solicite três números e calcule a média aritmética.
echo "=============================="
read -p "Digite um numero: " num1
read -p "Digite outro numero: " num2
read -p "Digite outro numero: " num3

media=$(echo "($num1 + $num2 + $num3) / 3" | bc)

clear

echo "Resultado: "
echo "A media é: $media"