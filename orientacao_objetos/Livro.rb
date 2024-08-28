class Livro
  attr_reader :titulo, :autor, :ano_publicacao

  def initialize(titulo, autor, ano_publicacao)
    @titulo = titulo
    @autor = autor
    @ano_publicacao = ano_publicacao
  end

  def informacoes()
    puts "O titulo do livre é: #{@titulo}, autor: #{@autor} e foi publicado em: #{@ano_publicacao}"
  end
end    

class Biblioteca
  attr_accessor :lista_livros

  def initialize
    @lista_livros = []
  end  

  def adicionar_livro(livro)
    @lista_livros << livro
  end
  
  def listar_livros()
    if @lista_livros.empty?
      puts "Lista Vazia"
    end
    @lista_livros.each do |livro|
      livro.informacoes
    end
  end
end
