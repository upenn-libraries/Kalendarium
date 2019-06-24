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
  // $(document.body).on('ajax:success', '.add-name-link', function(event) {
  //   const [data, status, xhr] = Array.from(event.detail);
  //   $(this).parents('.row').siblings('.name-form-location').html(xhr.responseText);
  //   $(this).hide();
  //   var names = $('#all-names').data('names').split('|')
  //   $( ".autocomplete-test:last" ).autocomplete({
  //     source: names
  //   });
  // });



// example from internet
// var cars =
// [
//     {
//         "label" : 'test2', //"BMW - Z3 - cabrio",
//         "value" : "BMWZ3",
//         "constructor" : "BMW",
//         "model": "Z3",
//         "type": "cabrio" },

//     {
//          "label" : 'test1',//"Porsche - 911 - coupe",
//         "value" : "Porsche911",
//         "constructor" : "Porsche",
//         "model": "911",
//         "type": "coupe" },


// ];

var variants = Array.from($('#all-names').data('variants2')).map(e => JSON.parse(e)); // JSON.parse($('#all-names').data('variants2'))

    $(".name-input").autocomplete({
        source: function(request, response){
            var matcher = new RegExp( $.ui.autocomplete.escapeRegex( request.term ), "i" );
            response( $.grep( variants, function( value ) {
            return matcher.test(value['constructor']) || matcher.test(value.model) || matcher.test(value.type);
        }));
        }
    })


   // var names = $('#all-names').data('names').split('|')
   // $(".name-input").autocomplete({
   //   source: names
   // });


  // name modal
  $(document.body).on('ajax:success', '.add-name-link', function(event) {
    const [data, status, xhr] = Array.from(event.detail);
    $('#name-modal .modal-body').html(xhr.responseText);
    $('#name-modal #hide-modal').html('cancel');
    $('#name-modal').modal('show');
  }).on("ajax:error", event => $('#name-modal .modal-content').html("<p>ERROR</p>"));

  $(document.body).on('click', '#hide-modal', function() {
    $('#name-modal').modal('hide')
  });
});







