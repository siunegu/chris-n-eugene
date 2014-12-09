# == Schema Information
#
# Table name: places
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  country     :string(255)
#  description :text
#  languages   :string(255)
#  timezone    :string(255)
#  region_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Place < ActiveRecord::Base
  belongs_to :region
  has_many :activities
  has_many :itinerary_places
  has_many :itineraries, through: :itinerary_places
end
