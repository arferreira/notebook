namespace :utils do
  desc "# Create phones and addresses for our app"
  task seed: :environment do
    puts "****************************************"
    puts "Criando telefones para o sistema"
    puts "****************************************"
    puts "\n"
    100.times do |p|
      Phone.create!(
        phone: Faker::PhoneNumber.cell_phone,
        contact: Contact.all.sample
      )
      puts "Criando o telefone #{p.to_s}"
      puts "****************************************"
    end
    puts "Telefones criados com sucesso!"
    puts "****************************************"
    puts "Criando endereços para os contatos do sistema"
    puts "****************************************"
    puts "\n"
    Contact.all.each do |a|
      Address.create!(
        street: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr,
        contact: a
      )
      puts "Gerando endereço para #{a.name}"
      puts "****************************************"
      puts "\n"
    end
    puts "Endereços gerados com sucesso!"
    puts "****************************************"
  end

end
