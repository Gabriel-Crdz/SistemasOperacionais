# Array em Bash

frutas=("maça" "banana" "cereja")
echo ${frutas[@]} # [@] percorre todo o array

for fruta in "${frutas[@]}"; do
    echo $fruta
done
echo "..............................."

# Array associativo
declare -A  coresFrutas
coresFrutas[maca]="Vermelha"
coresFrutas[banana]="Amarela"
coresFrutas[uva]="Roxo"

echo ${!coresFrutas[@]} # Mostra apenas os indices

for cores in "${!coresFrutas[@]}"; do
    echo "$cores ${coresFrutas[$cores]}" # Mostra os indices e os valores
done
echo "..............................."
# Removendo um item
unset coresFrutas[banana]
for cores in "${!coresFrutas[@]}"; do
    echo "$cores ${coresFrutas[$cores]}"
done
echo "..............................."