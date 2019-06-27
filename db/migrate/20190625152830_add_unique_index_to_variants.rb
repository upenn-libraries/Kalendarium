class AddUniqueIndexToVariants < ActiveRecord::Migration[5.1]
  def change
     add_index :variants, [:name_id, :variant, :language], unique: true
  end
end
