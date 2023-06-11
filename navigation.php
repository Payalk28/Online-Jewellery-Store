<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color: #ffffe6;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: black;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: #d9d9d9;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #ffffff;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ff9900;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
</head>
<body>


<!-- Main Navigation Start-->            
        <nav id="nav">

            <div id="menu">
                <h3 class="menuarrow"><span>Menu</span></h3>
                <ul>
				
				<?php
				 //To adjust menu stylesheet.css Line 267
				// Connect to server and select databse.
				include("includes/config.php");
			
				// Creating query to fetch main menu from mysql database table.
				$main_menu_query = "select * from main_menu";
				$main_menu_result = mysqli_query($main_menu_query);

				while($r = mysqli_fetch_array($main_menu_result))
				{
	
				?>
				 <li><a href="<?php echo $r['mmenu_link'];?>" id="<?php echo $r['mmenu_id'];?>" ><?php echo $r['mmenu_name'];?></a>
				 <div>
				 <ul>
				<?php
				 // Creating query to fetch sub menu from mysql database table.
				 $sub_menu_query = "select * from sub_menu where mmenu_id=".$r['mmenu_id'];
				 $sub_menu_result = mysql_query($sub_menu_query);
				 while($r1 = mysql_fetch_array($sub_menu_result))
				 {
					 
				?>
				  <li><a href="<?php echo $r1['smenu_link'];?>?Items=<?php echo $r1['0'];?>&Subname=<?php echo $r1['2'];?>&MenuCat=<?php echo $r1['1'];?>"><?php echo $r1['smenu_name'];?></a></li>
				 <?php 
				 } 
				?>
				 </ul>
				 </div>
				 </li>
				<?php
				}
				?>
				</ul>
            </div>

<div class="navbar">
  <a href="index-1.php">Home</a>
  <div class="dropdown">
    <button class="dropbtn">Jewellery 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="gold.php">Gold</a>
      <a href="silver.php">Silver</a>
      <a href="diamond.php">Diamond</a>
    </div>
  </div> 
  <a href="about.php">About Us</a>
  <a href="map.php">Contact</a>
</div>
             
        </nav>
        <!-- Main Navigation End-->
    </body>
    </html>