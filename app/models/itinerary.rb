# == Schema Information
#
# Table name: itineraries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Itinerary < ActiveRecord::Base
	belongs_to :user
	
	has_many :itinerary_place
	has_many :places, through: :itinerary_place
end
