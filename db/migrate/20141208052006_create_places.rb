class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
    	t.string :name
    	t.string :country    	
    	t.text :description
    	t.string :languages
    	t.string :timezone
    	t.integer :region_id
    	
      t.timestamps
    end
  end
end
