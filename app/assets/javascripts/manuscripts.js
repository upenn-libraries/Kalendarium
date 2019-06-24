$(document).on('turbolinks:load', function() {
 $(document.body).on('ajax:success', '.add-calendar-page-link', function(event) {
    const [data, status, xhr] = Array.from(event.detail);
    $('#calendar-page-modal .modal-body').html(xhr.responseText);
    $('#calendar-page-modal #hide-modal').html('cancel');
    $('#calendar-page-modal').modal('show');
  }).on("ajax:error", event => $('#feast-modal .modal-content').html("<p>ERROR</p>"));

  $(document.body).on('click', '#hide-modal', function() {
    $('#calendar-page-modal').modal('hide')
  })
});