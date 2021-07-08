class CreateProteries < ActiveRecord::Migration[5.2]
  def change
    create_table :proteries do |t|
      t.text :property
      t.integer :rent
      t.text :address
      t.integer :building_age
      t.text :remarks

      t.timestamps
    end
  end
end
