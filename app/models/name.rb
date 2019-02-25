class Name < ApplicationRecord
  has_many :feast_names
  has_many :feasts, through: :feast_names
  has_many :variants, dependent: :destroy

  validates :name, uniqueness: true
  accepts_nested_attributes_for :variants, allow_destroy: true, reject_if: :all_blank

  def to_s
    name
  end
end
