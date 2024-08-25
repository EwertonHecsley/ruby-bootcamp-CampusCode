conta_bancaria = {
    nome: "Maria",
    saldo: 0,
    historicos: []       
}

def extrato(conta_bancaria)
    depositos = 0
    saques = 0

    conta_bancaria[:historicos].each do |d|
        if d[:tipo] == 'deposito' then depositos += d[:valor]
        end
    end  
    
    conta_bancaria[:historicos].each do |d|
        if d[:tipo] == 'saque' then saques += d[:valor]
        end
    end  

    puts "Extrato de #{conta_bancaria[:nome]} - Saldo: #{conta_bancaria[:saldo]}"
    puts "Histórico:"
    puts "Depositos de: #{depositos}"
    puts "Saques de: #{saques}"
    puts "-----------------------------------"
end 

def depositar(conta_bancaria,valor)
    if valor <= 0 then puts "valor de depósito deve ser maior que 0."
        return 
    end

    conta_bancaria[:saldo] += valor   
    conta_bancaria[:historicos] << {tipo:'deposito',valor:valor} 

    puts "Depósito de #{valor} realizado com sucesso! para #{conta_bancaria[:nome]}"
end   

def sacar(conta_bancaria,valor)
    if valor <= 0 then puts "Valor de saque deve ser maior que 0."
        return 
    end

    if valor > conta_bancaria[:saldo] then puts "Saldo insuficiente."
        return 
    end

    conta_bancaria[:saldo] -= valor
    conta_bancaria[:historicos] << {tipo:'saque', valor:valor}

    puts "Saque de #{valor} realizado com sucesso!"
end

puts(conta_bancaria)

depositar(conta_bancaria,10)
depositar(conta_bancaria,10)
sacar(conta_bancaria,-1)
sacar(conta_bancaria,50)  
sacar(conta_bancaria,5)

extrato(conta_bancaria)

puts(conta_bancaria)