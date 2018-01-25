class CalendarPage < ApplicationRecord
  belongs_to :manuscript
  has_many   :feasts

  serialize :dates
  before_save :generate_dates

  # validate :check_chronology # not working?

  def folio_ordinal
    return folio.to_i unless %(r v).include? folio[-1]
    folio_number = folio[0..-2].to_i
    side_number  = folio[-1] == 'r' ? 0 : 1
    (folio_number * 10) + side_number
  end

  private
    def check_chronology
      months = Kal::Months::MONTH_TABLE ####
      start_m = months.find{ |m| m.name == start_month } ####
      end_m   = months.find{ |m| m.name == end_month   } ####
      start_m.number < end_m.number || (start_m == end_m && start_day < end_day)
    end

    def generate_dates
      self.dates = []

      months  = Kal::Months::MONTH_TABLE
      start_m = months[start_month - 1]
      end_m   = months[end_month - 1]

      (start_month..end_month).each do |month_num|
        start_d = month_num == start_month ? start_day : 1
        end_d   = month_num == end_month   ? end_day   : months[month_num - 1].length
        (start_d..end_d).each{ |day_num| self.dates << [month_num, day_num] }
      end
      true

      # self.dates =
      # begin
      #   months = Kal::Months::MONTH_TABLE ####
      #   start_m = months.find{ |m| m.name == start_month } ####
      #   end_m   = months.find{ |m| m.name == end_month   } ####
      #   dates = []
      #   (start_m.number..end_m.number).each do |month_num|
      #     start_d = month_num == start_m.number ? start_day : 1
      #     end_d   = month_num == end_m.number   ? end_day : months.find{ |m| m.number == month_num }.length
      #     (start_d..end_d).each{ |day_num| dates << [month_num, day_num] }
      #   end
      #   dates
      # end
    end
end



