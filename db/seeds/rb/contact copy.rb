# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "contact.rb"))'
puts 'Importing contacts...'

20.times do
  Contact.create(
    name: Faker::Name.name_with_middle,
    email: Faker::Internet.email,
    message: Faker::Lorem.paragraph_by_chars(number: 50)
  )
end