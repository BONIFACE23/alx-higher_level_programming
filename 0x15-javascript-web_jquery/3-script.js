// adds the class red to the <header> element when the user clicks
// on the tag DIV#red_header
$('DIV#red_header').click(function redH () {
	$('header').addClass('red');
});