class Variant < ApplicationRecord
  belongs_to :name

  def to_s
    "#{variant} (#{language.to_s.upcase})"
  end
end
