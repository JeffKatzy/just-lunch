class Invitation < ActiveRecord::Base
  belongs_to :user
  has_one :guest
end
