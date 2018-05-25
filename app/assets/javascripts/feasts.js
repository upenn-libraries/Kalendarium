$(document).on('turbolinks:load', function() {
  // $( "#feast_feast_names_attributes_0_name_id" ).change(function() {
  //   if ($( "select option:selected" ).val() == "") {
  //     $( "#name_field" ).removeClass('hidden');//.toggle(700);
  //   }
  //   if ($( "select option:selected" ).val() != "") {
  //     $( "#name_field" ).addClass('hidden');
  //    // $( "div[name=name_field]" ).val( 'uh' );
  //   }
  // });



  $(document).on('change', ".name-selection", function() {
    if ($(this).children("option:selected" ).val() == "") {
      $(this).parents('.form-group').parents('.col-8').parents('.row').siblings('.name-field').removeClass('hidden');
      // assuredly not the way to do this
    }
    if ($(this).children("option:selected").val() != "") {
      $(this).parents('.form-group').parents('.col-8').parents('.row').siblings('.name-field').addClass('hidden');
     // $( "div[name=name_field]" ).val( 'uh' );
    }
  });

  $(document).on('change', '#color-selection', function() {
    // $('#feast-form-area')[0].style.backgroundColor = $('#color-selection option:selected').val();
    var color_class = $('#color-selection option:selected').val().concat('-text');
    $('.feast-header span')[0].className = '';
    $('.feast-header span').addClass(color_class);
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
      $('#feast-modal .multiselect').multiselect({
        buttonClass: 'btn btn-secondary'
      });
      $('#feast-modal').modal('show')
    }).on("ajax:error", event => $('#feast-modal .modal-content').html("<p>ERROR</p>"));

  $(document.body).on('ajax:success', '.add-feast-modal-link', function(event) {
      const [data, status, xhr] = Array.from(event.detail);
      $('#feast-modal .modal-body').html(xhr.responseText);
      $('#feast-modal .modal-header').html('<span>Add new feast</span>')
      $('#feast-modal .multiselect').multiselect({
        buttonClass: 'btn btn-secondary'
      });
      $('#feast-modal').modal('show')
    }).on("ajax:error", event => $('#feast-modal .modal-content').html("<p>ERROR</p>"));

    $(document.body).on('click', '#hide-modal', function(event) {
      $('#feast-modal').modal('hide')
    })
});




