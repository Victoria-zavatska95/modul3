class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integer :hotel_id
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
