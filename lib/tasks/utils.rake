namespace :utils do
  desc "# Create phones and addresses for our app"
  task seed: :environment do
    puts "****************************************"
    puts "Create phones for the app"
    puts "****************************************"
    puts "\n"
    100.times do |p|
      Phone.create!(
        phone: Faker::PhoneNumber.cell_phone,
        contact: Contact.all.sample
      )
      puts "Create the phone #{p.to_s}"
      puts "****************************************"
    end
    puts "Phones created was success!"
    puts "****************************************"
    puts "Create addresses for contacts app"
    puts "****************************************"
    puts "\n"
    Contact.all.each do |a|
      Address.create!(
        street: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr,
        contact: a
      )
      puts "Generate address for  #{a.name}"
      puts "****************************************"
      puts "\n"
    end
    puts "Addresses generated with success!"
    puts "****************************************"
  end

end
