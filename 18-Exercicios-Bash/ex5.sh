# Peça um número e diga se ele é par ou ímpar.
echo "========================"
read -p "Digite um numero: " num

if ($num % 2 == 0); then
    status="PAR"
else
    status="IMPAR"
fi

clear # Limpa o terminal

echo "Resultado: "
echo "o numero $num é $status"