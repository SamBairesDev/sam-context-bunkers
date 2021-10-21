class CreateJoinTableOrdersLiquids < ActiveRecord::Migration[6.1]
  def change
    create_join_table :orders, :liquids do |t|
      # t.index [:order_id, :liquid_id]
      # t.index [:liquid_id, :order_id]
      t.integer :quantity
    end
  end
end
