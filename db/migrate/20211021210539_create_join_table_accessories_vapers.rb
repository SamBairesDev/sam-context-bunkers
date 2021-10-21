class CreateJoinTableAccessoriesVapers < ActiveRecord::Migration[6.1]
  def change
    create_join_table :accessories, :vapers do |t|
      # t.index [:accessory_id, :vaper_id]
      # t.index [:vaper_id, :accessory_id]
    end
  end
end
