class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.boolean :open
      t.datetime :date_opened
      t.datetime :date_closed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
