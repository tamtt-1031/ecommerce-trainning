class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.ineger :category_id
      t.text :description
      t.integer :sold

      t.timestamps
    end
  end
end
