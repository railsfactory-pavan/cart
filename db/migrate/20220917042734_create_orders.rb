class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.belongs_to :cart_basket, null: false, foreign_key: true, index: { unique: true }

      t.timestamps
    end
  end
end
