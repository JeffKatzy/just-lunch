# == Schema Information
#
# Table name: guests
#
#  id            :integer          not null, primary key
#  invitation_id :integer
#  meeting_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Guest < ActiveRecord::Base
  belongs_to :user
  belongs_to :meeting
end
