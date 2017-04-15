# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "****************************************"
puts "Criando tipos de contato principais do sistema"
puts "****************************************"
puts "\n"
puts "****************************************"
puts "Criando tipos de contatos.10%"
puts "Criando tipos de contatos..35%"
puts "Criando tipos de contatos...65%"
puts "Criando tipos de contatos....78%"
puts "Criando tipos de contatos.....89%"
puts "Criando tipos de contatos......99%"

k = Kind.create!([{description: "Amigo"}, {description: "Contato"}, {description: "Comercial"}])
if k
  puts "Tipos de contatos criados com sucesso!"
else
  puts "Ocorreu um erro ao criar os tipos de contato. :("
end

puts "****************************************"
puts "Criando usuário principal do sistema"
puts "****************************************"
puts "\n"
100.times do |c|
Contact.create!(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  kind: Kind.all.sample,
  rmk: LeroleroGenerator.sentence(5)
)
puts "****************************************"
puts "Gerando o contato #{c.to_s}"
puts "****************************************"
puts "\n"
end
puts "Contatos gerados com sucesso!"
puts "****************************************"
