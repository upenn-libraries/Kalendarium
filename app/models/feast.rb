class Feast < ApplicationRecord
  belongs_to :manuscript
  belongs_to :calendar_page

  serialize :saint_attributes

  def to_s
    "Feast of St. #{saint_name} (#{month_number}/#{day_number})"
  end
end
