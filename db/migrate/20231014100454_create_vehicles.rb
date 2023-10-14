class CreateVehicles < ActiveRecord::Migration[7.1]
  def change
    create_table :vehicles do |t|
      t.string :carbrand
      t.string :carmodel
      t.string :patent
      t.string :year
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
