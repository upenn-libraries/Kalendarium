module ManuscriptHelper
  def colors_for_manuscript ms
    Manuscript::COLORS.select{ |color| ms.color_weighting[color.to_sym] }
  end

  def display_field(object, attribute, options = {})
    value = object.send(attribute)
    if value.blank? && (value != false)
      return unless options[:always_display]
    end
    content_tag(:div, class: 'row') do
      (content_tag :div, "<strong>#{attribute.to_s.humanize}:</strong>".html_safe, class: 'col-2') +
      (content_tag :div, "#{value}", class: 'col-4')
    end
  end

  def display_field_group(object, heading, attributes, options={})
    head = content_tag :h4, heading, class: 'field-group-heading'
    values = attributes.map{ |a| object.send(a) }
    return head + '<no information>' if values.all?(&:blank?)

    divs = attributes.map do |attribute|
      value = object.send(attribute)
      next if value.blank? && (value != false)
      member_field(attribute, value)
    end

    head + divs.compact.join("\n").html_safe
  end

  def member_field(attribute, value)
    content_tag(:div, class: 'row') do
      content_tag(:div, "<strong>#{attribute.to_s.humanize}:</strong>".html_safe, class: 'col-2') +
      content_tag(:div, "#{value}", class: 'col-4')
    end
  end

  def add_calendar_page_link
    data = {toggle: 'modal', target: 'calendar-page-modal', remote: 'true'}
    classes = 'btn btn-kal-special btn-lg add-calendar-page-link'
    link_to 'New', new_manuscript_calendar_page_path(@manuscript), data: data, class: classes
  end

  def add_calendar_page_link2(manuscript)
    data = {toggle: 'modal', target: 'calendar-page-modal', remote: 'true'}
    classes = 'btn btn-kal-special add-calendar-page-link'
    link_to '<strong>+</strong>'.html_safe, new_manuscript_calendar_page_path(manuscript), data: data, class: classes
  end
end



