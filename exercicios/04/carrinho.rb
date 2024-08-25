carrinho = {
    nomeDoCliente: "Guido Bernal",
    produtos: [
        {
            id: 1,
            nome: "Camisa",
            qtd: 3,
            precoUnit: 3000
        },
        {
            id: 2,
            nome: "Bermuda",
            qtd: 2,
            precoUnit: 5000
        }
    ]
}

def imprimir_resumo_carrinho(carrinho)
    total_itens = 0
    total_pagar = 0

    carrinho[:produtos].each do |item|
        total_itens += item[:qtd]
    end    

    carrinho[:produtos].each do |item|
        total_pagar += item[:qtd] * item[:precoUnit]
    end    

    puts "Cliente: #{carrinho[:nomeDoCliente]}\nTotal de itens: #{total_itens}\nTotal a pagar: R$#{total_pagar / 100}"
end

novaBermuda = {
    id: 2,
    nome: "Bermuda",
    qtd: 3,
    precoUnit: 5000
}

novoTenis = {
    id: 3,
    nome: "Tenis",
    qtd: 1,
    precoUnit: 10000
}


def add_produto(carrinho,produto)
    if carrinho[:produtos].find {|p| p[:id] == produto[:id]}
        puts "Produto já existe"
    else carrinho[:produtos] << produto
        puts "Produto adicionado com sucesso."    
    end    
end    

puts carrinho[:produtos]

add_produto(carrinho,novoTenis)

puts carrinho[:produtos]

add_produto(carrinho,novoTenis)

imprimir_resumo_carrinho(carrinho)