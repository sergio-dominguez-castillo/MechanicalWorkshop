class CreateRepairreplacements < ActiveRecord::Migration[7.1]
  def change
    create_table :repairreplacements do |t|
      t.references :repair, null: false, foreign_key: true
      t.references :replacement, null: false, foreign_key: true

      t.timestamps
    end
  end
end
