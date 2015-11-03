class AddRestaurantIdFromInvitations < ActiveRecord::Migration
  def change
    add_column :invitations, :restaurant_id, :integer
  end
end
