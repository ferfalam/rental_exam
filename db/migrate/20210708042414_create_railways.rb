class CreateRailways < ActiveRecord::Migration[5.2]
  def change
    create_table :railways do |t|
      t.text :name
      t.text :station_name
      t.integer :time
      t.references :protery, foreign_key: true

      t.timestamps
    end
  end
end
