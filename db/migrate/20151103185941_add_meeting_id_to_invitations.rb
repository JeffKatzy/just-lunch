class AddMeetingIdToInvitations < ActiveRecord::Migration
  def change
    add_column :invitations, :meeting_id, :integer
  end
end
