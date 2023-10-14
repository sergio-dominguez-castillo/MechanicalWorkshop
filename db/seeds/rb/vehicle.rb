# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "vehicle.rb"))'
puts 'Importing vehicle...'

20.times do
  Vehicle.create(
    carbrand: Faker::Vehicle.make,
    carmodel: Faker::Vehicle.model,
    year: '2001',
    patent: Faker::Vehicle.license_plate,
    customer_id: Customer.all.sample.id)
end