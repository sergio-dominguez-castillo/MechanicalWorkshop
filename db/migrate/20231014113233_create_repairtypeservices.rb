class CreateRepairtypeservices < ActiveRecord::Migration[7.1]
  def change
    create_table :repairtypeservices do |t|
      t.references :repair, null: false, foreign_key: true
      t.references :typeservice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
