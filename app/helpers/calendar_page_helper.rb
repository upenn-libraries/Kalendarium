module CalendarPageHelper
  def display_small_cols(col_config, day)
    present_columns = col_config.first
    unit_span = col_config.last

    divs = present_columns.map do |col|
      span = ['Golden Number', 'Roman Day'].include?(col) ? (unit_span * 2) : (unit_span)
      content_tag :div, display_small_col(col, day), class: "col-#{span}"
    end

    divs.join("\n").html_safe
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
  # if Kal::Days::EGYPTIAN_DAYS[month_name(day.month_number)].include?(day.day_number)
    if Kal::Days::EGYPTIAN_DAYS2.include? [day.month_number, day.day_number]
      e_d = content_tag :em, ' D', class: 'egyptian-day', title: 'Egyptian Day', data: {toggle: :tooltip}
    end
    content_tag(:strong, "#{month_name(day.month_number)[0..2]} #{day.day_number}") + e_d.to_s
  end

  def display_kni day
    return content_tag(:b, day.kni[0].upcase, class: 'big-KNI') if not day.kni_number
    day.kni[0].upcase ###
  end

  def display_roman_day day
    day.kni_number
  end

  def display_golden_number day
    content_tag :span, day.golden_number, class: 'golden-number'
  end

  def display_dominical_letter day
    dominical_letter day.ordinal
  end

  def display_feast feast
    content_tag :span, feast.to_s, class: color_class(feast.color)
  end

  def modal_data(feast = nil)
    data = {
      toggle: 'modal',
      target: 'feast-modal',
      remote: 'true'
    }
    data.merge!(header: display_feast(feast)) if feast
    data
  end

  def show_feast_link(feast)
    classes = 'btn btn-secondary feast-modal-link'
    link_to 'details', feast_path(feast), data: modal_data(feast), class: classes
  end

  def edit_feast_link(feast)
    classes = 'btn btn-secondary edit-feast-modal-link'
    link_to 'edit', edit_feast_path(feast), data: modal_data(feast), class: classes
  end

  def add_feast_link(date)
    date_params = feast_date_params(date)
    classes = 'btn btn-sm btn-primary float-right add-feast-modal-link'
    link_to 'add feast', new_calendar_page_feast_path(@calendar_page, date_params), data: modal_data, class: classes
  end

  def delete_feast_link(feast)
    link_to 'delete', [@calendar_page, feast], method: :delete, data: { confirm: 'Are you sure?' }, class: "btn btn-danger"
  end

  def feast_date_params month_day
    {"feast[month_number]": month_day.first, "feast[day_number]": month_day.last}
  end
end
