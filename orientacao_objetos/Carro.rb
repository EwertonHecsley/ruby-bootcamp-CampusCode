class Carro
    attr_accessor :montadora, :cor, :ano
    attr_reader :ligado, :velocidade

    def initialize(montadora,cor,ano)
        @montadora = montadora
        @cor = cor
        @ano = ano
        @ligado = false
        @velocidade = 0
    end

    def ligar()
        if @ligado
            puts "O carro já está ligado."
        else @ligado = true
        end
    end      
    
    def acelerar()
        if !@ligado
            puts "O carro precisa estar ligado para acelerar."
        else @velocidade += 20
        end
    end      
    
    def frear()
        if @velocidade > 0
            @velocidade -= 20
        else puts "O carro esta parado"
        end
    end            

end       


sandero = Carro.new('Renault','prata',2015)

sandero.ligar()

puts sandero.velocidade

sandero.acelerar()
sandero.acelerar()
sandero.acelerar()
sandero.acelerar()

puts sandero.velocidade

sandero.frear()

puts sandero.velocidade
