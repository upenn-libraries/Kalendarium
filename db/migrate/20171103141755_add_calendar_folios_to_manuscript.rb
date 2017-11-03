class AddCalendarFoliosToManuscript < ActiveRecord::Migration[5.1]
  def change
    add_column :manuscripts, :calendar_folios, :text, null: false
  end
end
