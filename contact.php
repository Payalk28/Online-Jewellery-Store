<!DOCTYPE html>
<!--[if IE 8]> <html class="ie8 oldie" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en"> <!--<![endif]-->
<head>
	
	<title>Parissparsh Jeweler's</title>
	<!-- <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"> -->
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3829.1086668016055!2d74.14076491433971!3d16.31739093707493!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc05e17221a5817%3A0xbd183ea3921409f0!2sSayaji+Business+Centre!5e0!3m2!1sen!2sin!4v1559974091109!5m2!1sen!2sin" width="1250" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</script>
	
</head>
<body>
 <?php
echo "<script>window.location.href='contact/a.php';</script>";
?>	 <?PHP
include_once('popup-contactform.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Contact us</title>
	<link rel="STYLESHEET" type="text/css" href="popup-contact.css">
</head>

<body onload="javascript:fg_popup_form('fg_formContainer','fg_form_InnerContainer','fg_backgroundpopup');">

<a href="javascript:fg_hideform('fg_formContainer','fg_form_InnerContainer','fg_backgroundpopup');"></a>

<?php
//echo "<script>location='../default.php'";
?>

<?PHP
include_once('contactform-code.php');
?>

</body>
</html>