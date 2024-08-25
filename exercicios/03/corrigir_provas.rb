prova = {
    aluno: "Ewerton",
    materia: "Português",
    valor: 10,
    questoes: [
        {
            resposta: "a",
            correta: "b"
        },
        {
            resposta: "c",
            correta: "c"
        },
        {
            resposta: "b",
            correta: "b"
        },
        {
            resposta: "b",
            correta: "b"
        },
        {
            resposta: "c",
            correta: "c"
        }
    ]
};

def corrigir_prova(prova)
    acertos = 0
    arr_questoes = prova[:questoes]

        for q in arr_questoes
            if q[:resposta] == q[:correta]
                acertos += 1
            end    
        end
    puts "O aluno: #{prova[:aluno]} acertou #{acertos} questão(ões) e obteve a nota: #{acertos * 2}"     

    #arr_questoes.each do |nota|
        #puts nota
    #end    
end

corrigir_prova(prova)
