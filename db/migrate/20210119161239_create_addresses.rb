class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :province
      t.string :district
      t.string :place_name
      t.integer :ward_no
      t.timestamps
    end
  end
end
