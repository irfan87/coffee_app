class CreateCoffeeShops < ActiveRecord::Migration
  def change
    create_table :coffee_shops do |t|
      t.string :name
      t.text :address
      t.string :area
      t.string :region
      t.integer :postcode
      t.string :website
      t.string :email
      t.string :facebook_acc
      t.string :instagram_acc

      t.timestamps null: false
    end
  end
end
