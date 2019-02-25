# $(document).on 'turbolinks:load', ->
#   $(document).on 'change', '.name-selection', ->
#     if $(this).children('option:selected').val() == ''
#       $(this).parents('.form-group').parents('.row').siblings('.name-field').removeClass 'hidden'
#       # assuredly not the way to do this
#     else
#       $(this).parents('.form-group').parents('.row').siblings('.name-field').addClass 'hidden'
#     return