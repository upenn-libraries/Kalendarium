module FeastHelper

  def saint_attribute_optgroup(heading, attributes)
    content_tag(:optgroup, label: heading) do
      attributes.map do |attrib|
        content_tag(:option, value: attrib.code){ attrib.name.humanize }
      end.join.html_safe
    end
  end

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

end