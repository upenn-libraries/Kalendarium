module ApplicationHelper
  def yes_no(bool_val)
    bool_val ? 'yes' : 'no'
  end

  def feast_date_params month_day
    {"feast[month_number]": month_day.first, "feast[day_number]": month_day.last}
  end

  ABCDEFG = %w(A b c d e f g)

  def dominical_letter ordinal
    ABCDEFG[(ordinal % 7) - 1]
  end

  def color_class color
    color.to_s.downcase + '-text'
  end

  def colors_for_manuscript ms
    Manuscript::COLORS.select{ |color| ms.color_weighting[color.to_sym] }
  end


  def display_field(object, attribute, options = {})
    value = object.send(attribute)
    if value.blank? && (value != false) # issues with 'false' value?
      return unless options[:always_display]
    end
    content_tag(:div, class: 'row') do
      content_tag(:div, "#{attribute.to_s.humanize}:", class: 'col-3') +
      content_tag(:div, "#{value}", class: 'col-9')
    end

  end
  # field_name/field_value CSS classes

  def display_field_group(object, heading, attributes)
    head = content_tag(:h4, heading, class: 'field-group-heading')
    values = attributes.map{ |a| object.send(a) }
    return head + '<no information>' if values.all?(&:blank?)

    attributes.inject(head) do |list, attribute|
      print "\n"
      value = object.send(attribute)
      next(list) if value.blank? && (value != false)

      list +
        content_tag(:div, class: 'row') do
          content_tag(:div, "#{attribute.to_s.humanize}:", class: 'col-3') +
          content_tag(:div, "#{value}", class: 'col-9')
        end

    end
  end


  def manuscript_color_form

  end

  # -------------------------

  def arrange_columns(manuscript, day) # should be done once, not every day
    present_columns = manuscript.columns.select{ |col| col.present? }
    span_sum = present_columns.inject(0) do |sum, col|
      ['Golden Number', 'Roman Day'].include?(col) ? (sum + 2) : (sum + 1)
    end

    small_span = (12 / span_sum)

    divs = present_columns.map do |col|
      span = ['Golden Number', 'Roman Day'].include?(col) ? (small_span * 2) : (small_span)
      content_tag(:div, class: "col-#{span}"){ display_column(col, day) }  # should be done once, not every day
    end

    divs.join("\n").html_safe
  end


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
  # if Kal::Days::EGYPTIAN_DAYS[month_name(day.month_number)].include?(day.day_number)
    if Kal::Days::EGYPTIAN_DAYS2.include? [day.month_number, day.day_number]
      e_d = content_tag(:em, class: 'egyptian-day', title: 'Egyptian Day', data: {toggle: :tooltip}){ ' D' }
    end
    content_tag(:strong){ "#{month_name(day.month_number)[0..2]} #{day.day_number}" } + e_d.to_s
  end

  def display_kni day
    return content_tag(:b, class: 'big-KNI'){ day.kni[0].upcase } if not day.kni_number
    day.kni[0].upcase ###
  end

  def display_roman_day day
    day.kni_number
  end

  def display_golden_number day
    content_tag(:span, class: 'golden-number'){ day.golden_number }
  end

  def display_dominical_letter day
    dominical_letter day.ordinal
  end

  def display_feast day
    feasts = @calendar_page.feasts.select{ |f| day.month_number == f.month_number && day.day_number == f.day_number } # not ideal to do this both in calendar_page/show, and here
    return '' if feasts.blank?
    feast = feasts.first
    content_tag(:span, class: color_class(feast.color)){ feast.to_s }
  end

  def modal_data(feast=nil)
    data = {
      toggle: 'modal',
      target: 'feast-modal',
      remote: 'true'
    }
    data.merge!(header: content_tag(:span, class: color_class(feast.color)){ feast.to_s }) if feast
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
    date_params = feast_date_params(date) #{'feast[month_number]': date.first, 'feast[day_number]': date.last}
    classes = 'btn btn-sm btn-primary add-feast-modal-link'
    link_to 'add feast', new_calendar_page_feast_path(@calendar_page, date_params), data: modal_data, class: classes
  end

  def delete_feast_link(feast)
    link_to 'delete', [@calendar_page, feast], method: :delete, data: { confirm: 'Are you sure?' }, class: "btn btn-danger"
  end

  def saint_attribute_optgroup(heading, attributes)
    content_tag(:optgroup, label: heading) do
      attributes.map do |attrib|
        content_tag(:option, value: attrib.code){ attrib.name.humanize }
      end.join.html_safe
    end
  end
  # ----------------------------

  # # #
  def link_to_add_feast_name(name, f, options={})
    new_fn = FeastName.new
    id = new_fn.object_id
    fields = f.fields_for(:feast_names, new_fn) do |builder|
      render("feast_name_fields", fnf: builder)
    end

    options ||= {}
    options[:class] ||= ""
    options[:class] += " add-feast-name"

    options.update({data: {id: id, fields: fields.gsub("\n", "")}})#.merge(options)

    link_to(name, '#', options)
  end

  def month_name(month_number)
    Kal::Months::MONTH_TABLE[month_number - 1].name
  end
end