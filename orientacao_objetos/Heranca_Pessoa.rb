class Funcionario
    attr_accessor :nome, :cargo

    def initialize(nome,cargo)
        @nome = nome
        @cargo = cargo
    end
end


class Gerente < Funcionario
    attr_accessor :salario, :cargo, :nome

    def initialize(nome,cargo,salario)
        super(nome,cargo)
        @salario = salario
    end    
end


sandro = Gerente.new('Sandro','gerente',8000)


puts "Nome: #{sandro.nome}"