class CreateItineraryPlaces < ActiveRecord::Migration
  def change
    create_table :itinerary_places do |t|
    	t.integer :place_id
    	t.integer :itinerary_id
    	
      t.timestamps
    end
  end
end
