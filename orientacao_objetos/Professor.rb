class Professor
    attr_accessor :nome, :codigo, :disciplina

    def initialize(nome,codigo,disciplina)
        @nome = nome
        @codigo = codigo
        @disciplina = disciplina
        @ferias = false
    end

    def iniciar_ferias()
        @ferias = true
    end     
end    