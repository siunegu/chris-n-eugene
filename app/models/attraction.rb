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

  has_many :activities
  has_many :places
end
