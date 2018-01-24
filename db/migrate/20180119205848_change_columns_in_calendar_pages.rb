class ChangeColumnsInCalendarPages < ActiveRecord::Migration[5.1]
  def up
    change_column :calendar_pages, :start_month, :integer
    change_column :calendar_pages, :end_month,   :integer
  end
  def down
    change_column :calendar_pages, :start_month, :string
    change_column :calendar_pages, :end_month,   :string
  end
end
