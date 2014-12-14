class CreateAttractionPlaces < ActiveRecord::Migration
  def change
    create_table :attraction_places do |t|

      t.timestamps
    end
  end
end
