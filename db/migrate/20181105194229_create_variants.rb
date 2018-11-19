class CreateVariants < ActiveRecord::Migration[5.1]
  def change
    create_table :variants do |t|
      t.string :variant
      t.string :language
      t.references :name, foreign_key: true

      t.timestamps
    end
  end
end
