# Peça a nota de um aluno e diga se ele foi aprovado (nota ≥ 6) ou reprovado.
echo "============================"
read -p "Digite a nota do aluno " nota

if ((nota >= 6)); then
    status="Aprovado"
else
    status="Reprovado"
fi

clear
echo "Resultado:"
echo "O aluno esta $status"