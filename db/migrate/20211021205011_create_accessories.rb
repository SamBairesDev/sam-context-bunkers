class CreateAccessories < ActiveRecord::Migration[6.1]
  def change
    create_table :accessories do |t|
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
