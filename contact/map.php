

<!-- Head1 Part Start-->
<?php include("head1.html");?>
<!-- Head1 Part End-->

<!-- Top Part Start-->
<?php 
if($User != "")
{
	include("top_links2.php");
}
else
{
	include("top_links.php");
}
?>
<!-- Top Part End-->


<!-- Main Div Tag Start-->
<div id="wrapper">


	<!-- Header Part Start-->
	<?php 
	if($User != "")
	{
		include("header2.php");
	}
	else
	{
		include("header.php");
	}
	?>
	<!-- Header Part Start-->
	
	<!-- Middle Part Start--> 
	<!-- Section Start--> 
	<?php include("section.html"); ?>
	<!--Section End-->
	<!--Middle Part End-->
<!-- <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"> -->
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3829.1086668016055!2d74.14076491433971!3d16.31739093707493!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc05e17221a5817%3A0xbd183ea3921409f0!2sSayaji+Business+Centre!5e0!3m2!1sen!2sin!4v1559974091109!5m2!1sen!2sin" width="1250" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</script>
	
		

	<!--Footer Part Start-->
		<?php include("footer.php");?>
	<!--Footer Part End-->
</div>
<!-- Main Div Tag End-->

	<!--Flexslider Javascript Part Start-->
		<?php include("flexslider.php");?>
	<!--Flexslider Javascript Part End-->
 
 
<?php
	$end = microtime(true);
	$elapsed = $end - $start;
	echo "Procedure 1 = {$elapsed} seconds";
?>
</body>
</html>