class Feast < ApplicationRecord
  belongs_to :manuscript

  serialize :saint_attributes

  def to_s
    "Feast of St. #{saint_name} (#{month_number}/#{day_number})"
  end
end
