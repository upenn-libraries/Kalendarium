module FeastHelper
  def saint_attribute_optgroup(heading, attributes)
    opts = attributes.map{ |attrib| content_tag :option, attrib.name.humanize.capitalize, value: attrib.code }
    content_tag :optgroup, opts.join.html_safe, label: heading
  end

  def link_to_add_feast_name(name, f, options={})
    new_fn = FeastName.new
    id = new_fn.object_id

    fields = f.fields_for(:feast_names, new_fn, child_index: id) do |builder|
      render("feast_name_fields", fnf: builder)
    end

    options ||= {}
    options[:class] ||= ""
    options[:class] += " add-feast-name"

    options.merge!({data: {id: id, fields: fields.gsub("\n", "")}})

    link_to(name, '#', options)
  end


  def add_name_link
    data = {toggle: 'modal', target: 'name-modal', remote: 'true'}
    classes = 'btn btn-kal-special btn-lg add-name-link'
    link_to 'New', new_name_path, data: data, class: classes
  end
end



