class Variant < ApplicationRecord
  belongs_to :name

  validates :variant, uniqueness: {scope: [:name_id, :language], message: 'has already been taken for this name and language'}

  def to_s
    "#{variant} (#{language.to_s.upcase})"
  end
end
