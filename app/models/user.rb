# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  email           :string
#  password_digest :string
#

class User < ActiveRecord::Base
  has_many :invitations
  has_many :availabilities
  has_many :guests
  has_many :meetings, through: :invitations
  has_many :restaurants, through: :meetings

  has_secure_password

  def self.time_filter
    self.all.partition do |user|
      user.availabilities.first.time
    end
  end
end
