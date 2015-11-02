class Meeting < ActiveRecord::Base
  has_many :guests
  belongs_to :restaurant
end
