numero = 1
outro_numero = 20

if numero == outro_numero 
  puts 'Os números são iguais'
else
  puts 'Os números são diferentes'
end

puts('===================================================')


aluno = {
  nome:'Ewerton',
  nota:8
}

if aluno[:nota] >= 7
  puts " O aluno: #{aluno[:nome]} foi aprovado(a)"

elsif aluno[:nota] < 7 && aluno[:nota] >=5
  puts "O aluno: #{aluno[:nome]} está de recuperação"

else puts"O aluno: #{aluno[:nome]} está reprovado(a)!"
end  

puts("=====================================================")

nota = -10

case nota

when 0
  puts 'Você tirou zero! Precisa melhorar…'
when 1..4
  puts 'Reprovado… precisa se esforçar mais...'
when 5
  puts 'Passou raspando!'
when 6..9
  puts 'Parabéns, você foi aprovado.'
when 10
  puts 'Tirou 10! Você deve ser o melhor aluno que já tive!'
else
  puts 'Nota inválida!'
end 