class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :address
      t.string :phone
      t.string :status
      t.integer :total_price
      t.string :reason_description

      t.timestamps
    end
  end
end
