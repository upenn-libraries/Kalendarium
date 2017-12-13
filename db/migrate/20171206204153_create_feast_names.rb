class CreateFeastNames < ActiveRecord::Migration[5.1]
  def change
    create_table :feast_names do |t|
      t.references :feast, foreign_key: true
      t.references :name, foreign_key: true
      t.text :saint_attributes
      t.string :saint_location

      t.timestamps
    end
  end
end
