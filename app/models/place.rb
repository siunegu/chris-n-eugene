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
#  url         :string(255)
#

class Place < ActiveRecord::Base
  belongs_to :region
  

  has_many :attraction_places
  has_many :attractions, through: :attraction_places


  has_many :itinerary_places
  has_many :itineraries, through: :itinerary_places

  has_many :region_places
  has_many :regions, through: :region_places


end
