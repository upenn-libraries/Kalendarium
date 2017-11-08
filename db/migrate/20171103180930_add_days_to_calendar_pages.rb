class AddDaysToCalendarPages < ActiveRecord::Migration[5.1]
  def change
    add_column :calendar_pages, :days, :text
  end
end
