# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "repairtypeservice.rb"))'

puts 'Importing RepairReplacement...'

20.times do
  RepairTypeservice.create(
    repair_id: Repair.all.sample.id,
    typeservice_id: Typeservice.all.sample.id,   
    )
end