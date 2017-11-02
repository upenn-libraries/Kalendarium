class AddManuscriptReferencesToCalendarPages < ActiveRecord::Migration[5.1]
  def change
    add_reference :calendar_pages, :manuscript, foreign_key: true
  end
end
