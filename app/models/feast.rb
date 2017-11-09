class Feast < ApplicationRecord
  belongs_to :manuscript
  belongs_to :calendar_page

  serialize :saint_attributes

  SAINT_NAMES = %w(
    Matthew
    Mark
    Luke
    John
    Paul
    George
    Ringo
    Yoda
    Obi-Wan
  )


  def to_s
    "Feast of St. #{saint_name} (#{month_number}/#{day_number}): #{transcription.to_s[0..80]}"
  end
end
