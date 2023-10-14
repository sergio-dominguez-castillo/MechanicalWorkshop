class CreateRepairs < ActiveRecord::Migration[7.1]
  def change
    create_table :repairs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.references :vehicle, null: false, foreign_key: true
      t.references :typestate, null: false, foreign_key: true
      t.string :estimateddate
      t.text :description

      t.timestamps
    end
  end
end
