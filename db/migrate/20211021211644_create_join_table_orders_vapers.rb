class CreateJoinTableOrdersVapers < ActiveRecord::Migration[6.1]
  def change
    create_join_table :orders, :vapers do |t|
      # t.index [:order_id, :vaper_id]
      # t.index [:vaper_id, :order_id]
    end
  end
end
