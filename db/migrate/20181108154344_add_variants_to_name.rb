class AddVariantsToName < ActiveRecord::Migration[5.1]
  def change
    add_reference :names, :variant, foreign_key: true
  end
end
