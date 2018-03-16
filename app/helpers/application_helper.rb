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


  def display_field(object, attribute, options = {})
    value = object.send(attribute)
    if value.blank? && (value != false) # issues with 'false' value?
      return unless options[:always_display]
    end
    content_tag(:div, class: 'row') do
      content_tag(:div, "#{attribute.to_s.humanize}:", class: 'col-2') +
      content_tag(:div, "#{value}", class: 'col-2')
    end

  end
  # field_name/field_value CSS classes

  def display_field_group(object, heading, attributes)
    head = content_tag(:h3, heading, class: 'field-group-heading')
    values = attributes.map{ |a| object.send(a) }
    return head + '<no information>' if values.all?(&:blank?)

    attributes.inject(head) do |list, attribute|
      print "\n"
      value = object.send(attribute)
      next(list) if value.blank? && (value != false)

      list +
        content_tag(:div, class: 'row') do
          content_tag(:div, "#{attribute.to_s.humanize}:", class: 'col-2') +
          content_tag(:div, "#{value}", class: 'col-2')
        end

    end
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

  def display_small_col col, day
    case col
    when 'KNI'
      display_kni(day)
    when 'Roman Day'
      display_roman_day(day)
    when 'Golden Number'
      display_golden_number(day)
    when 'Dominical Letter'
      display_dominical_letter(day)
    end
  end

  def display_date day
    if Kal::Days::EGYPTIAN_DAYS[month_name(day.month_number)].include?(day.day_number)
      e_d = content_tag(:em, class: 'egyptian_day'){ ' D' }
    end
  # content_tag(:strong){ "#{month_name(day.month_number)} #{day.day_number}" } + e_d.to_s
    content_tag(:strong){ "#{month_name(day.month_number)[0..2]} #{day.day_number}" } + e_d.to_s
  end

  def display_kni day
    return content_tag(:b, class: 'big_KNI'){ day.kni[0].upcase } if not day.kni_number
    day.kni[0].upcase ###
  end

  def display_roman_day day
    day.kni_number
  end

  def display_golden_number day
    content_tag(:span, class: 'golden_number'){ day.golden_number }
  end

  def display_dominical_letter day
    dominical_letter day.ordinal
  end

  def display_feast day
    feasts = @calendar_page.feasts.select{ |f| day.month_number == f.month_number && day.day_number == f.day_number } # not ideal to do this both in calendar_page/show, and here
    return '' if feasts.blank?
    feast = feasts.first
    content_tag(:span, class: "#{feast_color_class(feast.color)}"){ feast.to_s }
  end

  # ----------------------------
  def saint_attribute_optgroup(heading, attributes)
    content_tag(:optgroup, label: heading) do
      attributes.map do |attrib|
        content_tag(:option, value: attrib){ attrib.humanize }
      end.join.html_safe
    end
  end

  # ----------------------------

  def month_name(month_number)
    Kal::Months::MONTH_TABLE[month_number - 1].name
  end
end