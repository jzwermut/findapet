// $(document).ready(function () {
// 	const breeds = $('#listing_breed_id').html()
// 	$('#listing_breed_id option').remove()
// 	$('select#listing_breeder_id').change(function() {
// 		let breeder = $('#listing_breeder_id option:selected').text();
// 		let options = $(breeds).filter("optgroup[label="${breeder}"]").html()
// 	})
// })


// $(document).ready(function () {    
//     var allOptions = $('#listing_breed_id option').text()
//     $('#listing_breeder_id').change(function () {
//         $('#listing_breed_id option').remove()
//         var classN = $('#listing_breeder_id option:selected').val();
//         var opts = allOptions.filter(classN);
//         $.each(opts, function (i, j) {
//             $(j).appendTo('#listing_breed_id');
//         });
//     });
// });

$(document).ready (function() {

	const breeds = $('#listing_breed_id').html()
	$('#listing_breed_id').empty()
	$('#listing_breeder_id').change(function() {
		let breeder = $('#listing_breeder_id option:selected').text()
		let options = $(breeds).filter(`optgroup[label="${breeder}"]`).html()
		if (options.length > 0) {
			$('#listing_breed_id').html(options);
		}
		else {
			$('#listing_breed_id').empty();
		}
	})
})

