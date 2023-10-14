# rails runner 'load(File.join(Rails.root, "db", "seeds", "rb", "repairreplacement.rb"))'

puts 'Importing RepairReplacement...'

20.times do
  RepairReplacement.create(
    repair_id: Repair.all.sample.id,
    replacement_id: Replacement.all.sample.id,   
    )
end