# == Schema Information
#
# Table name: itinerary_places
#
#  id           :integer          not null, primary key
#  place_id     :integer
#  itinerary_id :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class ItineraryPlace < ActiveRecord::Base
	belongs_to :itinerary
	belongs_to :place
end

