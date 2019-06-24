module Kal
  module Months

    Month = Struct.new(:name, :number, :length)

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

  end
end

