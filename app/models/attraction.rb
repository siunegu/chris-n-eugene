class Attraction < ActiveRecord::Base

  has_many :activities
  has_many :places
end
