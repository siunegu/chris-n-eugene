class AddAttractionIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :attraction_id, :integer
  end
end
