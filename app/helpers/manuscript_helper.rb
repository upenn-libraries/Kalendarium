module ManuscriptHelper

  def colors_for_manuscript ms
    Manuscript::COLORS.select{ |color| ms.color_weighting[color.to_sym] }
  end

  def display_field(object, attribute, options = {})
    value = object.send(attribute)
    if value.blank? && (value != false) # issues with 'false' value?
      return unless options[:always_display]
    end
    content_tag(:div, class: 'row') do
      (content_tag :div, "#{attribute.to_s.humanize}:", class: 'col-3') +
      (content_tag :div, "#{value}", class: 'col-9')
    end
  end
  # consider adding field_name/field_value CSS classes

  def display_field_group(object, heading, attributes)
    head = content_tag :h4, heading, class: 'field-group-heading'
    values = attributes.map{ |a| object.send(a) }
    return head + '<no information>' if values.all?(&:blank?)

    divs = attributes.map do |attribute|
      value = object.send(attribute) # redundancy
      next if value.blank? && (value != false)
      member_field(attribute, value)
    end

    head + divs.compact.join("\n").html_safe
  end


  def member_field(attribute, value)
    content_tag(:div, class: 'row') do
      content_tag(:div, "#{attribute.to_s.humanize}:", class: 'col-3') +
      content_tag(:div, "#{value}", class: 'col-9')
    end
  end

end



