class CreateApartments < ActiveRecord::Migration[5.2]
  def change
    create_table :apartments do |t|
      t.string :property_name
      t.integer :rent
      t.string :address
      t.integer :age
      t.text :note

      t.timestamps
    end
  end
end
