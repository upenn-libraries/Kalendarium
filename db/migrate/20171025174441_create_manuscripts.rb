class CreateManuscripts < ActiveRecord::Migration[5.1]
  def change
    create_table :manuscripts do |t|
      t.string :shelfmark
      t.string :name, null: false
      t.boolean :calendar_integral
      t.string :numbering_method
      t.string :book_type
      t.string :manuscript_or_print
      t.string :language
      t.string :origin
      t.text :origin_note
      t.string :destination
      t.text :destination_note
      t.string :script
      t.integer :text_height
      t.integer :text_width
      t.integer :text_depth
      t.integer :writing_surface_height
      t.integer :writing_surface_width
      t.integer :start_year
      t.integer :end_year
      t.text :date_note
      t.string :extent
      t.string :provenance
      t.string :state_of_completion
      t.string :resource
      t.text :columns
      t.string :start_folio
      t.string :end_folio
      t.text :color_weighting
      t.boolean :has_shading

      t.timestamps
    end
  end
end
