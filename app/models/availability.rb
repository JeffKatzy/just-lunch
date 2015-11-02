# == Schema Information
#
# Table name: availabilities
#
#  id         :integer          not null, primary key
#  time       :datetime
#  location   :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Availability < ActiveRecord::Base
  belongs_to :user
end
