# $( document ).on 'turbolinks:load', ->
$(document).on 'click', 'form .remove-feast-name', (event) ->
  $(this).prev('input[type=hidden]').val('1')
  $(this).closest('fieldset').hide()
  event.preventDefault()

$(document).on 'click', 'form .add-feast-name', (event) ->
  time = new Date().getTime()
  regexp = new RegExp($(this).data('id'), 'g')

  $(this).parents('.row').siblings('hr').before($(this).data('fields').replace(regexp, time))
  $(this).parents('.row').siblings('hr').siblings('fieldset:last').find('.multiselect').multiselect(buttonClass: 'btn btn-kal-standard')
  event.preventDefault()


  # $(this).before($(this).data('fields').replace(regexp, time))
  # $(this).siblings('fieldset:last').find('.multiselect').multiselect buttonClass: 'btn btn-kal-standard'
  # event.preventDefault()


# $(this).parents('fieldset').after($(this).data('fields').replace(regexp, time))
# $(this).parents('fieldset').siblings('fieldset:last').find('.multiselect').multiselect buttonClass: 'btn btn-kal-standard'
