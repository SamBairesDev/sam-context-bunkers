class CreateVapers < ActiveRecord::Migration[6.1]
  def change
    create_table :vapers do |t|
      t.string :name
      t.float :price
      t.string :brand
      t.string :waranty_time

      t.timestamps
    end
  end
end
