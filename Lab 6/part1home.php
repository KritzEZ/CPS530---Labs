<?php
mysqli_connect("localhost", "k38shah", "joruchDo", "k38shah") or die(mysql_error());
echo "Connected to MySQL";

$sql = "SELECT * FROM MyPhotos ORDER BY date_taken";
$result = $conn->query($sql);
if ($result->num_rows>0) {
	while($row = $result->fetch_assoc()){
		if ($row["location"] == "ON, Canada"){
			echo "<img src='{$row["url"]}'><br>".
			echo "Subject: " . $row["subject"]. "<br>";
			echo "Location: " . $row["location"]. "<br>";
			echo "Date Taken: " . $row["date_taken"]. "<br>";
		}
	}
}
else {
	echo "No Results Found";
}

?>

