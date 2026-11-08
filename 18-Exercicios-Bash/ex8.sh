# Peça o preço de um produto e aplique: 10% de desconto se o valor for maior que 100, 5% se for menor ou igual a 100
echo "================================"
read -p "Digite o preço do produto: " preco

clear
echo "Resultado:"
if(($preco > 100)); then
    desc=$(echo "$preco * 0.9" | bc)
    echo "$preco recebe %10 desconto e fica: $desc"
else
    desc=$(echo "$preco * 0.95" | bc)
    echo "$preco recebe %5 desconto e fica: $desc"
fi

