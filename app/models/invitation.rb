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

  private

  def self.select_pairs
    pairs = User.apply_filters.each_with_object([]) do |filtered_group, pairs|
      while filtered_group.count > 1
        pairs << filtered_group.shuffle!.pop(2)
      end
    end
  end

  def self.create_invitations
    self.select_pairs.each do |pair|
      binding.pry  
      meeting = Meeting.new(status: "pending", time: pair[0].time)
      meeting.
      invite_one = Inviation.create(meeting: meeting, user: pair[0], status: "pending")
      invite_two = Inviation.create(meeting: meeting, user: pair[0], status: "pending")
    end
  end

end
