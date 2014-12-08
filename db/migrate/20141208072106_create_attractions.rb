class CreateAttractions < ActiveRecord::Migration
  def change
    create_table :attractions do |t|
      t.string :activities
      t.string :food
      t.string :facilities

      t.timestamps
    end
  end
end
