alberto = {
  nome:'Alberto',
  nota:7,
  disciplina:'Artes'
};

maria = {
  nome:'Maria',
  nota:9,
  disciplina:'Matemática'
};


puts(alberto[:nome] + " tirou nota " + alberto[:nota].to_s() + " em " + alberto[:disciplina]);

puts("=====================================================")

lista_alunos = [alberto,maria];

puts(lista_alunos[1][:nome])