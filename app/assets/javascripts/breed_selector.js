$(document).ready (function() {

	var breeds = $('#listing_breed_id').html();
	$('#listing_breed_id').empty();
	$('#listing_breeder_id').change(function() {
		var breeder = $('#listing_breeder_id option:selected').text();
		var options = $(breeds).filter(`optgroup[label="${breeder}"]`).html();
		if (options.length > 0) {
			$('#listing_breed_id').html(options);
		}
		else {
			$('#listing_breed_id').empty();
		}
	})
})

