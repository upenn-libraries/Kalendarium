module ApplicationHelper
  def yes_no(bool_val)
    bool_val ? 'yes' : 'no'
  end

  def feast_date_params month_day
    { "feast[month_number]": month_day.first, "feast[day_number]": month_day.last }
  end
end
