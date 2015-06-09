class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.boolean :is_check
      t.string :name
      t.integer :store_id
      t.integer :user_id
      t.string :address
      t.decimal :price
      t.string :image_url
      t.decimal :org_price

      t.timestamps null: false
    end
  end
end
