module CalendarPageHelper
  def display_small_cols(col_config, day)
    present_columns = col_config.first
    unit_span = col_config.last

    divs = present_columns.map do |col|
      span = ['golden_number', 'numeral'].include?(col) ? (unit_span * 2) : (unit_span)
      content_tag :div, display_small_col(col, day), class: "col-#{span}"
    end

    divs.join(?\n).html_safe
  end

  def display_small_col(col, day)
    send(:"display_#{col.downcase.gsub(' ', '_')}", day)
  end

  def display_date(day)
    content_tag :strong, "#{month_name(day.month_number)[0..2]} #{day.day_number}", class: 'modern-date'
  end

  def display_kni(day)
    return content_tag(:b, day.kni[0].upcase, class: 'big-KNI') if not day.kni_number
    day.kni[0].upcase ###
  end

  def display_numeral(day)
    day.kni_number
  end

  def display_golden_number(day)
    content_tag :span, day.golden_number, class: 'golden-number'
  end

  def display_dominical_letter(day)
    'Abcdefg'[(day.ordinal % 7) - 1]
  end

  def display_feast(feast)
    content_tag :span, feast.to_s, class: color_class(feast.color)
  end

  def modal_data(date, feast = nil)
    data = {
      toggle: 'modal',
      target: 'feast-modal',
      remote: 'true'
    }

    date_display = "&nbsp;<div class='modern-date'>#{date[0]}/#{date[1]}</div>&nbsp;"
    header = feast ? display_feast(feast) : '<span class="black-text">Add new feast</span>'
    data[:header] = content_tag(:div, class: 'row'){ "#{date_display} #{header}" }

    data
  end

  def show_feast_link(date, feast)
    classes = 'btn btn-kal-standard feast-modal-link'
    link_to 'details', feast_path(feast), data: modal_data(date, feast), class: classes
  end

  def edit_feast_link(date, feast)
    classes = 'btn btn-kal-standard edit-feast-modal-link'
    link_to 'edit', edit_feast_path(feast), data: modal_data(date, feast), class: classes
  end

  def add_feast_link(date)
    date_params = feast_date_params(date)
    classes = 'btn btn-sm btn-kal-special float-right add-feast-modal-link'
  # link_to 'add feast', new_calendar_page_feast_path(@calendar_page, date_params), data: modal_data(date), class: classes
    link_to 'add feast', new_calendar_page_feast_path(@calendar_page, date_params), class: classes
  end

  def delete_feast_link(feast)
    message = "Are you sure you want to delete the feast '#{feast.to_s}' (#{feast.month_number}/#{feast.day_number})?"
    link_to 'X', [@calendar_page, feast], method: :delete, data: {confirm: message}, class: "btn btn-danger"
  end

  def feast_date_params(month_day)
    {"feast[month_number]": month_day.first, "feast[day_number]": month_day.last}
  end


  def edit_calendar_page_link
    data = {toggle: 'modal', target: 'calendar-page-modal', remote: 'true'}
    classes = 'btn btn-kal-standard edit-feast-modal-link'
    link_to 'edit', edit_feast_path(feast), data: data, class: classes
  end
end
