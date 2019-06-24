class CreateNameDates < ActiveRecord::Migration[5.1]
  def change
    create_table :name_dates do |t|
      t.integer :month
      t.integer :day
      t.integer :use_count
      t.boolean :preset
      t.references :name, foreign_key: true

      t.timestamps
    end
  end
end
