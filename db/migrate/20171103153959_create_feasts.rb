class CreateFeasts < ActiveRecord::Migration[5.1]
  def change
    create_table :feasts do |t|
      t.integer :month_number, null: false
      t.integer :day_number, null: false
      t.text :transcription
      t.string :saint_name
      t.text :saint_attributes
      t.string :modifier
      t.text :shading
      t.string :color
      t.references :manuscript, foreign_key: true

      t.timestamps
    end
  end
end
