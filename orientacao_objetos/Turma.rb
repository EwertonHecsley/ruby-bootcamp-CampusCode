class Turma
    attr_accessor :nome, :numero_sala, :professor_responsael

    def initialize(nome,numero_sala,professor_responsael)
        @nome = nome
        @numero_sala = numero_sala
        @professor_responsavel = professor_responsavel
        @alunos = []
    end   

    def adicionar_aluno(aluno)
        @alunos << aluno
    end    

    def total_alunos()
        @alunos.length()
    end    
end    