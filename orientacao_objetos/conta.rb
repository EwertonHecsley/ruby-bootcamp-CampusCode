class Conta
  #Metodo para gerar os geteres automaticos, onde reader é apenas para leitura, writer setar e acessor para ambos
  attr_reader :numero,:titular
  attr_accessor :saldo

  def initialize(numero,titular,saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
  end

end
