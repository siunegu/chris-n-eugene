class CreateAttractionActivities < ActiveRecord::Migration
  def change
    create_table :attraction_activities do |t|

      t.timestamps
    end
  end
end
