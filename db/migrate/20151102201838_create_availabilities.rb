class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.datetime :time
      t.string :location
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
