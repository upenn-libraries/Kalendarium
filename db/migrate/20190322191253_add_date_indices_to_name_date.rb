class AddDateIndicesToNameDate < ActiveRecord::Migration[5.1]
  def change
    add_index :name_dates, :month
    add_index :name_dates, :day
  end
end
