class User < ActiveRecord::Base
  has_many :invitations
  has_many :availabilities
  has_many :guests, through: :invitations
  has_many :meetings, through: :guests
  has_many :restaurants, through: :meetings
end
