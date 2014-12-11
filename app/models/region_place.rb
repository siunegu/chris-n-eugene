class RegionPlace < ActiveRecord::Base
	belongs_to :region
	belongs_to :place
end
