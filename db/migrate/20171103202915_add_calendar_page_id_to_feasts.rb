class AddCalendarPageIdToFeasts < ActiveRecord::Migration[5.1]
  def change
    add_reference :feasts, :calendar_page, foreign_key: true
  end
end
