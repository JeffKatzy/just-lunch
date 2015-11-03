class AddTimeToAvailabilities < ActiveRecord::Migration
  def change
    add_column :availabilities, :time, :string
  end
end
