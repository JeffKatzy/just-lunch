class RemoveInvitationIdFromGuests < ActiveRecord::Migration
  def change
    remove_column :guests, :invitation_id, :integer
  end
end
