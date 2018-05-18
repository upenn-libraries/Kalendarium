$(document).on 'click', 'form .remove-color-select', (event) ->
#   $(this).prev('input[type=hidden]').val('1')
  $(this).parents('fieldset').hide()
  event.preventDefault()

$(document).on 'click', 'form .add-color-select', (event) ->
  $(this).prev('#color-field-location').append($(this).siblings('p').data('uh'))
  event.preventDefault()


$(document).on 'change', '.color-selector', (event) ->
  $(this).parents('fieldset').parents('#color-field-location').attr(
    'data-colors', $(".color-selector option:selected").val()
    )
  $(this).children("[value='green']").hide()
