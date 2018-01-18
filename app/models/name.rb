class Name < ApplicationRecord
  has_many :feast_names
  has_many :feasts, through: :feast_names

  validates :name, uniqueness: true

  def to_s
    name
  end
end
