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

  def colors_for_manuscript ms
    Manuscript::COLORS.select{ |color| ms.color_weighting[color.downcase.to_sym] }
  end

  # -------------------------

  def display_column col, day # for now
    case col
    when 'KNI'
      display_kni(day)
    when 'Roman Day'
      display_roman_day(day)
    when 'Golden Number'
      display_golden_number(day)
    when 'Dominical Letter'
      display_dominical_letter(day)
    when 'Text'
       display_feast(day)
    end
  end

  def display_date day

    if Kal::Days::EGYPTIAN_DAYS[Kal::Months::MONTH_TABLE[day[:month_number] - 1].name].include? day[:day_number]
      e_d = content_tag(:em, class: 'egyptian_day'){ 'D' }
    end

    content_tag(:strong){ "#{Kal::Months::MONTH_TABLE[day[:month_number] - 1].name} #{day[:day_number]} " } + e_d.to_s
  end

  def display_kni day
    return content_tag(:b, class: 'big_KNI'){ day[:kni][0].upcase } unless day[:kni_number]
    day[:kni][0].upcase ###
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
    feasts = @calendar_page.feasts.select{ |f| day[:month_number] == f.month_number && day[:day_number] == f.day_number }
    return '' if feasts.blank?
    feast = feasts.first
    content_tag(:span, class: "#{feast_color_class(feast.color)}"){ feast.to_s }
  end
end
