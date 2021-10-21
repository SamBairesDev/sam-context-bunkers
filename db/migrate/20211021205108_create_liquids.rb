class CreateLiquids < ActiveRecord::Migration[6.1]
  def change
    create_table :liquids do |t|
      t.string :name
      t.float :price
      t.string :strength
      t.string :flavor
      t.float :size
      t.string :brand

      t.timestamps
    end
  end
end
