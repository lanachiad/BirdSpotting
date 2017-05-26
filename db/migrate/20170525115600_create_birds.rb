class CreateBirds < ActiveRecord::Migration
  def change
  	create_table :birds do |t|
  		t.string :scientific_name, null: false
  		t.string :common_name, null: false
  		t.string :description, null: false
  		t.string :size, null: false
  		t.string :primary_color, null: false
  		t.string :secondary_color, null: false
  		t.string :chest_color, null: false
  		t.string :distinct_pattern, array: true
  		t.string :habitat, null: false
  		t.string :nesting, null: false
  		t.string :call_description, null: false
      t.string :img, null: false
      t.string :region, array: true, null: false

  		t.timestamps(null: false)
  	end
  end
end
