class AddPhoneNameFoodUrlPostalToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :phone, :string
    add_column :restaurants, :name, :string
    add_column :restaurants, :food, :string
    add_column :restaurants, :url, :string
    add_column :restaurants, :postal, :string
  end
end
