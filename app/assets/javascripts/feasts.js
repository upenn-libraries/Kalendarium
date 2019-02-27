$(document).on('turbolinks:load', function() {
 // $('select.multiselect').multiselect({
 //    enableCollapsibleOptGroups: true,
 //    collapseOptGroupsByDefault: true,
 //    buttonText: function(options, select) {
 //      return 'choose attributes';
 //    }
 //  });


    // var names = $('#all-names').data('names').split('|')
    // $( ".autocomplete-test:last" ).autocomplete({
    //   source: names
    // });
    autocompleteWithNames = function(field){
      form.autocomplete({source: names});
    }


  // feast buttons for launching modal on calendar_page#show

  // 'details'
  $(document.body).on('ajax:success', '.feast-modal-link', function(event) {
    const [data, status, xhr] = Array.from(event.detail);
    $('#feast-modal .modal-body').html(xhr.responseText);
    $('#feast-modal .modal-header').html($(this).attr('data-header'));
    $('#feast-modal #hide-modal').html('back')
    $('#feast-modal').modal('show')
  }).on("ajax:error", event => $('#feast-modal .modal-content').html("<p>ERROR</p>"));

  // 'edit'
  $(document.body).on('ajax:success', '.edit-feast-modal-link', function(event) {
    const [data, status, xhr] = Array.from(event.detail);
    $('#feast-modal .modal-body').html(xhr.responseText);
    $('#feast-modal .modal-header').html($(this).attr('data-header'));
    $('#feast-modal .multiselect').multiselect({
      buttonClass: 'btn btn-kal-standard',
      enableCollapsibleOptGroups: true,
      collapseOptGroupsByDefault: false,
    });
    $('#feast-modal #hide-modal').html('cancel');
    $('#feast-modal').modal('show');
  }).on("ajax:error", event => $('#feast-modal .modal-content').html("<p>ERROR</p>"));

  // 'add feast'
  $(document.body).on('ajax:success', '.add-feast-modal-link', function(event) {
    const [data, status, xhr] = Array.from(event.detail);
    $('#feast-modal .modal-body').html(xhr.responseText);
    $('#feast-modal .modal-header').html($(this).attr('data-header'));//.html('<span>Add new feast</span>')
    $('#feast-modal .multiselect').multiselect({
      buttonClass: 'btn btn-kal-standard',
      buttonText: function(options, select) {
        return 'Choose attributes';
      }
    });
    $('#feast-modal #hide-modal').html('cancel');
    $('#feast-modal').modal('show');;
  }).on("ajax:error", event => $('#feast-modal .modal-content').html("<p>ERROR</p>"));

  $(document.body).on('click', '#hide-modal', function(event) {
    $('#feast-modal').modal('hide')
  })
});




