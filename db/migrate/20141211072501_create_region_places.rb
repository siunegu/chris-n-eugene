class CreateRegionPlaces < ActiveRecord::Migration
  def change
    create_table :region_places do |t|
    	t.integer	:place_id
    	t.integer :region_id

      t.timestamps
    end
  end
end
