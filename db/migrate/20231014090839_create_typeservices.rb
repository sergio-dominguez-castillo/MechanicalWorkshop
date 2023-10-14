class CreateTypeservices < ActiveRecord::Migration[7.1]
  def change
    create_table :typeservices do |t|
      t.string :name

      t.timestamps
    end
  end
end
