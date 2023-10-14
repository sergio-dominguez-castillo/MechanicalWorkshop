class CreateTypestates < ActiveRecord::Migration[7.1]
  def change
    create_table :typestates do |t|
      t.string :name

      t.timestamps
    end
  end
end
