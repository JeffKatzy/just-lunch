class RemoveTimeFromMeeting < ActiveRecord::Migration
  def change
    remove_column :meetings, :time, :datetime
  end
end
