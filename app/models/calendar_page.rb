class CalendarPage < ApplicationRecord
  belongs_to :manuscript
  has_many   :feasts

  serialize :dates
  before_save :generate_dates


  MONTH_NAMES = %w(
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

  MONTH_SELECT = [ # rename
    ['January',   1],
    ['February',  2],
    ['March',     3],
    ['April',     4],
    ['May',       5],
    ['June',      6],
    ['July',      7],
    ['August',    8],
    ['September', 9],
    ['October',  10],
    ['November', 11],
    ['December', 12]
  ]


  def folio_ordinal
    return folio.to_i unless %(r v).include? folio[-1]
    folio_number = folio[0..-2].to_i
    side_number  = folio[-1] == 'r' ? 0 : 1
    (folio_number * 10) + side_number
  end

  ################################################################### temporary way of doing this
  # class Month
  #   attr_reader :name
  #   attr_reader :number
  #   attr_reader :length

  #   def initialize params = {}
  #     @name   = params[:name]
  #     @number = params[:number]
  #     @length = params[:length]
  #   end

  #   def to_s
  #     name
  #   end
  # end

  # MONTHS = [
  #   Month.new(name: '',          number:  0, length:  0),
  #   Month.new(name: 'January',   number:  1, length: 31),
  #   Month.new(name: 'February',  number:  2, length: 28),
  #   Month.new(name: 'March',     number:  3, length: 31),
  #   Month.new(name: 'April',     number:  4, length: 30),
  #   Month.new(name: 'May',       number:  5, length: 31),
  #   Month.new(name: 'June',      number:  6, length: 30),
  #   Month.new(name: 'July',      number:  7, length: 31),
  #   Month.new(name: 'August',    number:  8, length: 31),
  #   Month.new(name: 'September', number:  9, length: 30),
  #   Month.new(name: 'October',   number: 10, length: 31),
  #   Month.new(name: 'November',  number: 11, length: 30),
  #   Month.new(name: 'December',  number: 12, length: 31)
  # ]



  private
    def generate_dates
      self.dates =
      begin
        months = KAL::Months::MONTH_TABLE
        start_m = months.find{ |m| m.name == start_month }
        end_m   = months.find{ |m| m.name == end_month   }
        dates = []
        (start_m.number..end_m.number).each do |month_num|
          start_d = month_num == start_m.number ? start_day : 1
          end_d   = month_num == end_m.number   ? end_day : months.find{ |m| m.number == month_num }.length
          (start_d..end_d).each{ |day_num| dates << [month_num, day_num] }
        end
        dates
      end
    end
 ##################################################################################################
end



