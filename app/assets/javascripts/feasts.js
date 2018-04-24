$( document ).on('turbolinks:load', function() {
  $( "#feast_feast_names_attributes_0_name_id" ).change(function() {
    if ($( "select option:selected" ).val() == "") {
      $( "#name_field" ).removeClass('hidden');//.toggle(700);
    }
    if ($( "select option:selected" ).val() != "") {
      $( "#name_field" ).addClass('hidden');
     // $( "div[name=name_field]" ).val( 'uh' );
    }
  });


 $('select.multiselect').multiselect({
    buttonText: function(options, select) {
      return 'choose attributes';
    }
  });

$(document.body).on('ajax:success', '.feast-modal-link', function(event) {
  // $('.feast-modal-link').on("ajax:success", function(event) {
      const [data, status, xhr] = Array.from(event.detail);
      $('#feast-modal .modal-body').html(xhr.responseText);
      $('#feast-modal .modal-header').html($(this).attr('data-header'));
      $('#feast-modal').modal('show')
    }).on("ajax:error", event => $('#feast-modal .modal-content').html("<p>ERROR</p>"));

  $(document.body).on('ajax:success', '.edit-feast-modal-link', function(event) {
 // $('.edit-feast-modal-link').on("ajax:success", function(event) {
      const [data, status, xhr] = Array.from(event.detail);
      $('#feast-modal .modal-body').html(xhr.responseText);
      $('#feast-modal .modal-header').html($(this).attr('data-header'));
      $('#feast-modal').modal('show')
    }).on("ajax:error", event => $('#feast-modal .modal-content').html("<p>ERROR</p>"));


  $(document.body).on('ajax:success', '.add-feast-modal-link', function(event) {
      const [data, status, xhr] = Array.from(event.detail);
      $('#feast-modal .modal-body').html(xhr.responseText);
      $('#feast-modal .modal-header').html($(this).attr('data-header'));
      $('#feast-modal').modal('show')
    }).on("ajax:error", event => $('#feast-modal .modal-content').html("<p>ERROR</p>"))

});




