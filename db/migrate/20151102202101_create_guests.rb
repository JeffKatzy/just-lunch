class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.integer :invitation_id
      t.integer :meeting_id

      t.timestamps null: false
    end
  end
end
