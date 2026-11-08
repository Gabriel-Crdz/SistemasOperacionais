# Peça o peso (kg) e altura (m) do usuário e calcule o IMC: imc = peso / (altura ** 2)
echo "============================"
read -p "Digite seu peso: " peso
read -p "Digite sua altura: " altura

imc=$(echo "scale=2; $peso / ($altura^2)" | bc -l)

if (( $(echo "$imc < 18.5" | bc -l) )); then
    status="Abaixo do peso"
elif (( $(echo "$imc >= 18.5 && $imc <= 24.9" | bc -l) )); then
    status="Peso normal"
elif (( $(echo "$imc >= 25 && $imc <= 29.9" | bc -l) )); then
    status="Sobrepeso"
else
    status="Obesidade"
fi

clear # Limpa o terminal
echo "Resultado:"
echo "Seu IMC é: $imc"
echo "Você está: $status"
