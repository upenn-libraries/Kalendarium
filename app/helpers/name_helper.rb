module NameHelper
  def link_to_add_variant(name, f, options={})
    new_v = Variant.new
    id = new_v.object_id

    fields = f.fields_for(:variants, new_v, child_index: id) do |builder|
      render("variant_fields", vf: builder)
    end

    options ||= {}
    options[:class] ||= ""
    options[:class] += " add-variant"

    options.update({data: {id: id, fields: fields.gsub("\n", "")}})#.merge(options)

    link_to(name, '#', options)
  end

  # MODAL_DATA = {
  #   toggle: 'modal',
  #   target: 'feast-modal',
  #   remote: 'true'
  # }

  # def add_name_link
  #   classes = 'btn btn-sm btn-kal-special float-right add-name-modal-link'
  #   link_to 'ok', new_name_path(@feast_name), data: MODAL_DATA, class: classes
  # end

   def add_name_link
    classes = 'btn btn-sm btn-kal-special btn-large add-name-link'
    link_to 'new name', new_name_path(@feast_name), data: {remote: true}, class: classes
  end
end