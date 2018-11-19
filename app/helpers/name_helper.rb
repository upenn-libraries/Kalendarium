module NameHelper
  def link_to_add_variant(name, f, options={})
    new_v = Variant.new
    id = new_v.object_id

    fields = f.fields_for(:variants, new_v) do |builder|
      render("variant_fields", vf: builder)
    end

    options ||= {}
    options[:class] ||= ""
    options[:class] += " add-variant"

    options.update({data: {id: id, fields: fields.gsub("\n", "")}})#.merge(options)

    link_to(name, '#', options)
  end
end