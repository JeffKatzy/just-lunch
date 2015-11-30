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

  def change_status(new_status)
    self.status = new_status
    self.save
    self.meeting.change_meeting_status(self)
  end

  private

# These methods belong in a service object, which you will learn about later
# For now, would prefer they are moved to a controller

  def self.select_pairs
    pairs = User.apply_filters.each_with_object([]) do |filtered_group, pairs|
      # use a higher level iterator instead of a while loop
      while filtered_group.count > 1
        pairs << filtered_group.shuffle!.pop(2)
      end
    end
  end

  def self.create_invitations
    self.select_pairs.each do |pair|
      meeting = Meeting.new(status: "pending", time: pair[0].availabilities.first.time)
      meeting.save
      invite_one = Invitation.create(meeting: meeting, user: pair[0], status: "pending")
      invite_two = Invitation.create(meeting: meeting, user: pair[1], status: "pending")
    end
  end

end
