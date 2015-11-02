class Guest < ActiveRecord::Base
  belongs_to :invitation
  belongs_to :meeting
end
