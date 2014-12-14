class CreateJoinTableAttractionPlaces < ActiveRecord::Migration
  def change
    create_join_table :attractions, :places do |t|
      t.index [:attraction_id, :place_id]
      t.index [:place_id, :attraction_id]
    end
  end
end
