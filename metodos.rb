def criandoMetodo()
  puts "Rodei o metodo!";
end


criandoMetodo();


def somarDoisNumeros(num1,num2)
  num1 + num2;
end  

puts(somarDoisNumeros(1,1))  

puts('========================================');

alberto = { nome: 'Alberto', nota: 7, disciplina: 'Artes' }
joana = { nome: 'Joana', nota: 5, disciplina: 'Biologia' }
karen = { nome: 'Karen', nota: 9, disciplina: 'Filosofia' }

alunos = [alberto, joana, karen]

def imprime_alunos(nome,nota,disciplina)
  puts "#{nome} tirou a nota: #{nota} em #{disciplina}";
end

alunos.each do |alunos|
  imprime_alunos(alunos[:nome],alunos[:nota],alunos[:disciplina])
end  

puts('========================================');

for aluno in alunos
  imprime_alunos(aluno[:nome],aluno[:nota],aluno[:disciplina]);

  if aluno[:nota] >= 7
    puts "Aluno aprovado(a)!";
  else puts 'Aluno reprovado(a)!';
  end     

end  