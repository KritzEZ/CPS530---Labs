<?php
	session_start(); 
   
	if(isset($_SESSION['views'])) 
	    $_SESSION['views'] = $_SESSION['views']+1; 
	else
	    $_SESSION['views']=1; 
	      
	echo"views = ".$_SESSION['views'];

	
	$row = $_POST["rows"];
	$col = $_POST["cols"];

	if ($row > 12 or $row < 3 or $col > 12 or $col < 3 ){
		echo"<br>";
		echo "<h2 align=\"center\">Please Enter Numbers Between 3 and 12</h2>";
		echo "<br>";
		echo "<a href=\"part1home.html\">Go Back To Form Page</a>";
	}
	else {
		echo "<table border=\"0\" align=\"center\" cellspacing=\"10\">";
		for ($c1 = 1; $c1 <=$row; $c1 += 1){
			echo "<tr>";
			for ($c2=1; $c2 <=$col; $c2 += 1){
				echo "<td>"; 
				$answer = $c1*$c2;
				echo "$answer </td>";
			}
			echo "</tr>";
		}
		echo "</table>";
	}
?>