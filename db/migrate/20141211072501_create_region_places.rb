class CreateRegionPlaces < ActiveRecord::Migration
  def change
    create_table :region_places do |t|

      t.timestamps
    end
  end
end
