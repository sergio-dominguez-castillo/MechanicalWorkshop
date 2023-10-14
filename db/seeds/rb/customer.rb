# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "customer.rb"))'
puts 'Importing customers...'

20.times do
  Customer.create(
    name: Faker::Name.name_with_middle,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.cell_phone,
    address: Faker::Address.street_name)
end