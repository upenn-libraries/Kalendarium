class CalendarPage < ApplicationRecord
  belongs_to :manuscript

  MONTHS = %w(
    January
    February
    March
    April
    May
    June
    July
    August
    September
    October
    November
    December
  )
end
