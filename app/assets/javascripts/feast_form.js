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

  // $(document).on('change', '.name-selection', function() {
  //   name_location = $(this).parents('.row').siblings('.name-form-location')
  //   if ($(this).children('option:selected').val() == "") {
  //   //  name_selection.parents('.form-group').parents('.row').siblings('.name-field').removeClass('hidden');

  //     $.ajax({
  //       type: "GET",
  //       url: "/names/new",
  //       data: {},
  //       dataType: 'html',
  //       success: function(data) {
  //         // name_selection.parents('.row').after(data);
  //         name_location.html(data);
  //         name_location.removeClass('hidden');
  //         name_location.addClass('bordered-name-form');
  //       },
  //       error: function(){ alert('ajax request failed') }
  //     });

  //   } else {
  //     // $(this).parents('.form-group').parents('.row').siblings('.name-field').addClass('hidden');
  //     name_location.removeClass('bordered-name-form')
  //     name_location.addClass('hidden');
  //   }
  // });

  // causes problems to have this like this (end up trying to split nil on other pages)
  // names = $('#all-names').data('names').split('|')
  // $(".name-input").autocomplete({
  //   source: names
  // });

  $(document).on('click', '.new-name', function() {
    var name_location = $(this).parents('.row').siblings('.name-form-location')
      $.ajax({
        type: "GET",
        url: "/names/new",
        data: {},
        dataType: 'html',
        success: function(data) {
          // name_selection.parents('.row').after(data);
          name_location.html(data);
          name_location.removeClass('hidden');
          name_location.addClass('bordered-name-form');
        },
        error: function(){ alert('ajax request failed') }
      });
      // # on click 'cancel' (or something)
      // name_location.removeClass('bordered-name-form')
      // name_location.addClass('hidden');
  });


  $(document).on('change', '#color-selection', function() {
    var color_class = $('#color-selection option:selected').val().concat('-text');
    $('.feast-header span')[0].className = '';
    $('.feast-header span').addClass(color_class);
  });
});


