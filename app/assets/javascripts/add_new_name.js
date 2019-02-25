// $(document).on('turbolinks:load', function() {
//   $(document.body).on('ajax:success', '.add-name-modal-link', function(event) {
//     const [data, status, xhr] = Array.from(event.detail);
//     $('#name-modal .modal-body').html(xhr.responseText);
//     $('#name-modal .modal-header').html('Add new name');
//     $('#name-modal .hide-modal').html('cancel');
//     $('#name-modal').modal('show');;
//   }).on("ajax:error", event => $('#name-modal .modal-content').html("<p>ERROR</p>"));

//   $(document.body).on('click', '.hide-modal', function(event) {
//     $('#name-modal').modal('hide')
//   })
// });


$(document).on('turbolinks:load', function() {
  $(document.body).on('ajax:success', '.add-name-link', function(event) {
    const [data, status, xhr] = Array.from(event.detail);
    $(this).parents('.row').siblings('.name-form-location').html(xhr.responseText);
    $(this).hide();

    var names = $('#all-names').data('names').split('|')
    $( ".autocomplete-test:last" ).autocomplete({
      source: names
    });


  })
});


