class AddPlaceIdToAttractions < ActiveRecord::Migration
  def change
    add_column :attractions, :place_id, :integer
  end
end
