class Conta
  # Metodo para gerar os getters e setters automáticos
  attr_reader :numero, :titular
  attr_accessor :saldo

  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular
    @saldo = saldo
  end

  def sacar(valor)
    if @saldo >= valor
      @saldo -= valor
      puts "Saque realizado com sucesso, saldo atual: #{@saldo}"
      true
    else
      puts "Saldo insuficiente para realizar o saque."
      false
    end
  end  

  def depositar(valor)
    @saldo += valor
    puts "Depósito realizado com sucesso, saldo atual: #{@saldo}"
  end
  
  def transferir(outra_conta, valor)
    if sacar(valor)
      outra_conta.depositar(valor)
      puts "Transferência realizada com sucesso!"
    else
      puts "Transferência não pode ser realizada, saldo insuficiente!"
    end
  end  
end
