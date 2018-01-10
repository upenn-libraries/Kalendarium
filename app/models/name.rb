class Name < ApplicationRecord
  has_many :feast_names
  has_many :feasts, through: :feast_names

  def to_s
    name
  end
end
