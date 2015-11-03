# == Schema Information
#
# Table name: invitations
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  meeting_id :integer
#

class Invitation < ActiveRecord::Base
  belongs_to :user
  belongs_to :meeting

end
