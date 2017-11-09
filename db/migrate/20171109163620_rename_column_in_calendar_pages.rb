class RenameColumnInCalendarPages < ActiveRecord::Migration[5.1]
  def change
    rename_column :calendar_pages, :days, :dates
  end
end
