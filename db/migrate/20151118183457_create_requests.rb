class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :pet_name
      t.text :description
      t.text :care_instructions
      t.date :range

      t.timestamps null: false
    end
  end
end
