class Aluno
  attr_reader :nome, :turno, :serie

  def initialize(nome,turno,serie)
    @nome = nome
    @turno = turno
    @serie = serie
    @notas = []
  end

  def setName(name)
    @nome = name
  end  

end

joao = Aluno.new("joao","tarde",1)

puts(joao.nome)

joao.setName("Troquei")

puts(joao.nome)