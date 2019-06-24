$(document).on 'click', 'form .remove-variant', (event) ->
  $(this).prev('input[type=hidden]').val('1')
  $(this).closest('fieldset').hide()
  event.preventDefault()

$(document).on 'click', 'form .add-variant', (event) ->
  time = new Date().getTime()
  regexp = new RegExp($(this).data('id'), 'g')
  $(this).parents('.form-group').siblings('.action-buttons').before($(this).data('fields').replace(regexp, time))
  event.preventDefault()

