class AttractionPlaces < ActiveRecord::Base

  belongs_to :attraction
  belongs_to :place
end
