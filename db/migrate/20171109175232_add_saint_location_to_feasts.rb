class AddSaintLocationToFeasts < ActiveRecord::Migration[5.1]
  def change
    add_column :feasts, :saint_location, :string
  end
end
