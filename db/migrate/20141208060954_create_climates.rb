class CreateClimates < ActiveRecord::Migration
  def change
    create_table :climates do |t|
    	t.string :climate

      t.timestamps
    end
  end
end
