class CreateJoinTableOrdersAcessories < ActiveRecord::Migration[6.1]
  def change
    create_join_table :orders, :accessories do |t|
      # t.index [:order_id, :accessory_id]
      # t.index [:accessory_id, :order_id]
      t.integer :quantity
    end
  end
end
