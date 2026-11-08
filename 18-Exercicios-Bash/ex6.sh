# Peça dois números e informe qual é o maior (ou se são iguais).
echo "========================"
read -p "Digite um numero: " num1
read -p "Digite outro numero: " num2

if ((num1 < num2)); then
    status="menor que"
elif ((num1 > num2)); then
    status="maior que"
else
    status="igual a"
fi

clear
echo "Resultado:"
echo "$num1 é $status $num2"