module Kal
  module Months

    Month = Struct.new(:name, :number, :length) # do
     #  def to_s
     #    name
     #  end
     # end

    MONTH_TABLE = [
      Month.new('January',    1, 31),
      Month.new('February',   2, 28),
      Month.new('March',      3, 31),
      Month.new('April',      4, 30),
      Month.new('May',        5, 31),
      Month.new('June',       6, 30),
      Month.new('July',       7, 31),
      Month.new('August',     8, 31),
      Month.new('September',  9, 30),
      Month.new('October',   10, 31),
      Month.new('November',  11, 30),
      Month.new('December',  12, 31)
    ]


  #   MONTH_SELECT = [
  #   ['January',   1],
  #   ['February',  2],
  #   ['March',     3],
  #   ['April',     4],
  #   ['May',       5],
  #   ['June',      6],
  #   ['July',      7],
  #   ['August',    8],
  #   ['September', 9],
  #   ['October',  10],
  #   ['November', 11],
  #   ['December', 12]
  # ]

  end
end


=begin

month revisions
change table CalendarPage~Month to Integer
change field in calendar_pages/form
change references...

=end