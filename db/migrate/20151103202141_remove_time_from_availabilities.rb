class RemoveTimeFromAvailabilities < ActiveRecord::Migration
  def change
    remove_column :availabilities, :time, :datetime
  end
end
