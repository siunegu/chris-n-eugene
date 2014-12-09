# == Schema Information
#
# Table name: attractions
#
#  id              :integer          not null, primary key
#  attraction_name :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Attraction < ActiveRecord::Base
	belongs_to :places
  has_many :attraction_activities
  has_many :activities, through: :attraction_activities
end
