class AddNameDateToFeastName < ActiveRecord::Migration[5.1]
  def change
    add_reference :feast_names, :name_date, foreign_key: true
  end
end
