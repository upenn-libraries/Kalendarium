class CreateCalendarPages < ActiveRecord::Migration[5.1]
  def change
    create_table :calendar_pages do |t|
      t.string :folio, null: false
      t.string :start_month, null: false
      t.string :end_month, null: false
      t.integer :start_day, null: false
      t.integer :end_day, null: false

      t.timestamps
    end
  end
end
