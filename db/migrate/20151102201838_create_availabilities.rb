class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.datetime :time
      t.string :location

      t.timestamps null: false
    end
  end
end
