# start_month
# start_day
# end_month
# end_day

# start_month.downcase.to_sym


MONTH_ORDER = {
  january:    1,
  february:   2,
  march:      3,
  april:      4,
  may:        5,
  june:       6,
  july:       7,
  august:     8,
  september:  9,
  october:   10,
  november:  11,
  december:  12
}


MONTH_LENGTH = {
  january:    31,
  february:   29,
  march:      31,
  april:      30,
  may:        31,
  june:       30,
  july:       31,
  august:     31,
  september:  30,
  october:    31,
  november:   30,
  december:   31
}



def get_days(start_month, start_day, end_month, end_day)
  days = []
  (MONTH_ORDER[start_month]..MONTH_ORDER[end_month]).each do |month_num|
    start_d = MONTH_ORDER[start_month] == month_num ? start_day : 1
    end_d   = MONTH_ORDER[end_month]   == month_num ? end_day : MONTH_LENGTH[MONTH_ORDER.invert[month_num]] # lol
    (start_d..end_d).each{ |day_num| days << [month_num, day_num] }
  end
  days.each{ |d| puts d }
end




###############################

class Month
  attr_reader :name
  attr_reader :number
  attr_reader :length

  def initialize params = {}
    @name   = params[:name]
    @number = params[:number]
    @length = params[:length]
  end

  def days
    (1..length).to_a.map{ |d| [number, d] }
  end
end

def transparent_ordinal date
  (date.first) * 100 + date.last
end

def transparent_ordinal_to_date_string transpo
  transpo.to_s.insert(-3, '/')
end

MONTHS = [
  Month.new(name: 'January',   number:  1, length: 31),
  Month.new(name: 'February',  number:  2, length: 29),
  Month.new(name: 'March',     number:  3, length: 31),
  Month.new(name: 'April',     number:  4, length: 30),
  Month.new(name: 'May',       number:  5, length: 31),
  Month.new(name: 'June',      number:  6, length: 30),
  Month.new(name: 'July',      number:  7, length: 31),
  Month.new(name: 'August',    number:  8, length: 31),
  Month.new(name: 'September', number:  9, length: 30),
  Month.new(name: 'October',   number: 10, length: 31),
  Month.new(name: 'November',  number: 11, length: 30),
  Month.new(name: 'December',  number: 12, length: 31)
]


def get_days(start_month, start_day, end_month, end_day)
  start_m = MONTHS.find{ |m| m.name == start_month }
  end_m   = MONTHS.find{ |m| m.name == end_month   }
  days = []
  (start_m.number..end_m.number).each do |month_num|
    start_d = month_num == start_m.number ? start_day : 1
    end_d   = month_num == end_m.number   ? end_day : MONTHS.find{ |m| m.number == month_num }.length
    (start_d..end_d).each{ |day_num| days << [month_num, day_num] }
  end
  days.each{ |d| puts d }
end



MONTHS =[
  'January' => {length: 31}
]



###########################

#folio...

#start_f
#end_f
def folios_from_range(start_f, end_f, mode = :foliated)
# folios =
  if mode == :foliated
    start_recto = start_f[-1] == 'r'
    end_verso   =   end_f[-1] == 'v'
    start_f.chop!
    end_f.chop!
    initials = start_recto ? [start_f + 'r', start_f + 'v'] : [start_f + 'v']
    finals   = end_verso   ? [end_f   + 'r', end_f   + 'v'] : [end_f   + 'r']
    intermediates = ((start_f.to_i + 1)..(end_f.to_i - 1)).to_a.map{ |n| ["#{n}r", "#{n}v"] }
    (initials + intermediates + finals).flatten
  else
    (start_f.to_i..end_f.to_i).to_a.map{ |n| n.to_s }
  end
end















