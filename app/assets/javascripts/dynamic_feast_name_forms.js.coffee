# $( document ).on 'turbolinks:load', ->
$(document).on 'click', 'form .remove-feast-name', (event) ->
  $(this).prev('input[type=hidden]').val('1')
  $(this).closest('fieldset').hide()
  event.preventDefault()

$(document).on 'click', 'form .add-feast-name', (event) ->
  time = new Date().getTime()
  regexp = new RegExp($(this).data('id'), 'g')
# $(this).before($(this).data('fields'))#.replace(regexp, time))
# $(this).siblings('fieldset:last').find('.multiselect').multiselect buttonClass: 'btn btn-secondary'
# event.preventDefault()
  $(this).prev('div').children('p').before($(this).data('fields'))
  $(this).prev('div').children('p').siblings('fieldset:last').find('.multiselect').multiselect buttonClass: 'btn btn-secondary'
  event.preventDefault()

