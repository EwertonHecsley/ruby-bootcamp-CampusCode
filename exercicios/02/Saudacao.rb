class Pessoa
    def initialize(nome,idade)
        @nome = nome
        @idade = idade
    end

    def saudacao()
        puts "Olá, me chamo #{@nome} e tenho #{@idade} anos";
    end    
end        

ewerton = Pessoa.new("Ewerton",34)

ewerton.saudacao();