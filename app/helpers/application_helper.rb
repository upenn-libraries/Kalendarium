module ApplicationHelper
  def yes_no(bool_val)
    bool_val ? 'yes' : 'no'
  end

  def feast_date_params month_day
    { "feast[month_number]": month_day.first, "feast[day_number]": month_day.last }
  end

  ABCDEFG = %w(A b c d e f g)

  def dominical_letter ordinal
    ABCDEFG[(ordinal % 7) - 1]
  end


  def feast_color_class color
    color.to_s.downcase + '_feast'
  end

  # -------------------------

  def display_column col, day # for now
    case col
    when 'KNI'
      display_kni              (day)
    when 'Roman Day'
      display_roman_day        (day)
    when 'Golden Number'
      display_golden_number    (day)
    when 'Dominical Letter'
      display_dominical_letter (day)
    when 'Text'
       display_feast           (day)
    else
      'kni'
    end
  end

  def display_date day
    # binding.pry
    content_tag(:strong){ "#{CalendarPage::MONTHS.find{ |m| m.number == day[:month_number] }} #{day[:day_number]} " }
  end

  def display_kni day
    day[:kni]
  end

  def display_roman_day day
    day[:kni_number]
  end

  def display_golden_number day
    content_tag(:span, class: 'golden_number'){ day[:golden_number] }
  end

  def display_dominical_letter day
    day[:dominical_letter]
  end

  def display_feast day
    feast = @calendar_page.manuscript.feasts.find{ |f| day[:month_number] == f.month_number && day[:day_number] == f.day_number }
    return '' if feast.blank?
    content_tag(:span, class: "#{feast_color_class(feast.color)}"){ feast.to_s }
  end

  # -------------------------




  # -------------------------
=begin
  def display_column col, date # for now
    case col
    when 'Date'
      display_date             (date)
    when 'Roman Day'
      display_roman_day        (date)
    when 'Golden Number'
      display_golden_number    (date)
    when 'Dominical Letter'
      display_dominical_letter (date)
    when 'Text'
       display_feast           (date)
    else
      'kni'
    end
  end

  def display_date date
    content_tag(:strong){ "#{CalendarPage::MONTHS.find{ |m| m.number == date.first }} #{date.second} " }
  end

  def display_roman_day date
    '(roman)'
  end

  def display_golden_number date
    content_tag(:span, class: 'golden_number'){ "#{Kal::Days::DATE_HASH[date][:golden_number]}" }
  end

  def display_dominical_letter date
    "#{dominical_letter Kal::Days::DATE_HASH[date][:ordinal]}"
  end

  def display_feast date
    feast = @calendar_page.manuscript.feasts.find{ |f| date.first == f.month_number && date.last == f.day_number }
    return '' if feast.blank?
    content_tag(:span, class: "#{feast_color_class(feast.color)}"){ feast.to_s }
  end

  # -------------------------
=end

end
