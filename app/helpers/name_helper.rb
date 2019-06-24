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

    options.merge!({data: {id: id, fields: fields.gsub("\n", "")}})

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


  def json_variants
    varis = {}
    Variant.all.each{ |v| (varis[Name.find(v.name_id).name] ||= []) << v.variant }
    varis.to_json
  end

  def json_variants2
    varis = {}.tap{ |v| Variant.all.each{ |vv| (v[Name.find(vv.name_id).name] ||= []) << vv.variant } }
    varis.keys.map do |name|
      v = varis[name]
      {
        label: name + ': ' + v.join(', '),
        value: name,
        constructor: name,
        model: rand(266..999),
        type: v.join(' '),
      }.to_json
    end
  end
end