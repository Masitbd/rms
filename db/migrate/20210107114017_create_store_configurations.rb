class CreateStoreConfigurations < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_configurations do |t|
      t.string :restaurant_name
      t.text :restaurant_description
      t.string :email_address
      t.string :phone_number
      t.string :website_url
      t.string :address
      t.string :city
      t.string :state
      t.string :zip

      t.string :currency
      t.decimal :tax_rate, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
