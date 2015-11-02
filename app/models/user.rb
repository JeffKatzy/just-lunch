class User < ActiveRecord::Base
  has_many :invitations
  has_many :availabilities
end
