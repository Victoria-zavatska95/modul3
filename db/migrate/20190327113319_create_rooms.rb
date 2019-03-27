class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :hotel_id
      t.string :photos
      t.integer :number_of_room
      t.integer :count_of_room

      t.timestamps
    end
  end
end
