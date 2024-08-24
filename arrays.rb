alunos = ['André', 'Sophia', 'Laura'];
notas = [5, 6, 8];

puts(alunos[0] + " tirou a nota: " + notas[0].to_s());
puts(alunos[1] + " tirou a nota: " + notas[1].to_s());
puts(alunos[2] + " tirou a nota " + notas[2].to_s());


puts("=========================================")

notas[1] = 9;

# Este comando (<<) Adiciona um novo valor ao final do array
alunos << 'Paulo';
notas << 7.5;

puts(alunos[0] + " tirou a nota: " + notas[0].to_s());
puts(alunos[1] + " tirou a nota: " + notas[1].to_s());
puts(alunos[2] + " tirou a nota " + notas[2].to_s());
puts(alunos[3] + " tirou a nota " + notas[3].to_s());


puts("===========================================")

#Remove ultimo valor do array
alunos.pop()

puts(alunos)

puts("Essa turma possui: " + alunos.length().to_s() + " alunos nas sala.");


