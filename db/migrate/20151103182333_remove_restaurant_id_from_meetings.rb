class RemoveRestaurantIdFromMeetings < ActiveRecord::Migration
  def change
    remove_column :meetings, :restaurant_id, :integer
  end
end
