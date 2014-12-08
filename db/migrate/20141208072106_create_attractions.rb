class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
    	t.string :attraction_name

      t.timestamps
    end
  end
end
