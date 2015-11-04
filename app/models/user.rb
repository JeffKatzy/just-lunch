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
  before_save :set_time_location
  has_secure_password

  def set_time_location
    self.availabilities.build(time: "12", location:"10004") 
  end

  private

  def self.time_filter(user_array)
    # returned a has of time as key pointing to an array of objects with that time
    user_array.chunk do |user|
      user.availabilities.first.time
    end.to_h.values
  end

  def self.location_filter(user_array)
    user_array.chunk do |user|
      user.availabilities.first.location
    end.to_h.values
  end

  def self.apply_filters
    time_results = self.time_filter(User.all)
    location_results = time_results.map do |time_result|
      self.location_filter(time_result)
    end.flatten(1)
  end
end
