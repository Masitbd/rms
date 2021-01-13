class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :sku
    	t.string :name
    	t.text :description
    	t.decimal :price, :precision => 8, :scale => 2
      t.boolean :discount, :default => false
      t.integer :item_category_id

      t.timestamps
      end
  end
end
