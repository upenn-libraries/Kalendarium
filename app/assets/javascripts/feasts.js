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
      return 'Choose any and all saint attributes that appeal to you';
    }
  });
});




