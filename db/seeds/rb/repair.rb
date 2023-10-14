# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "repair.rb"))'
# Table name: repairs
#
#  id            :bigint           not null, primary key
#  user_id       :bigint           not null
#  customer_id   :bigint           not null
#  vehicle_id    :bigint           not null
#  typestate_id  :bigint           not null
#  estimateddate :string
#  description   :text
puts 'Importing repair...'

20.times do
  Repair.create(
    user_id: User.all.sample.id,
    customer_id: Customer.all.sample.id,
    vehicle_id: Vehicle.all.sample.id,
    typestate_id: Typestate.all.sample.id,
    estimateddate: '2023/12/31',
    description: Faker::Lorem.paragraph_by_chars(number: 50)
    )
end