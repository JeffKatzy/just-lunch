class AddTimeToMeeting < ActiveRecord::Migration
  def change
    add_column :meetings, :time, :string
  end
end
