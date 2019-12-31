<?php
$conn = new mysqli("localhost", "k38shah" , "joruchDo", "k38shah");
if (!$conn) {
	die("Connection Failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM MyPhotos ORDER BY date_taken ASC";
$result = $conn->query($sql);
echo "<h1 align='center'> Lab 6 Part 1 </h1>";
if ($result->num_rows > 0) {
	echo "<table border='3' cellpadding='5'><tr><th>Date</th><th>Subject</th><th>Location</th>";
	while($row = $result->fetch_assoc()) {
		echo "<tr><td>" . $row["date_taken"]. "</td><td>" . $row["subject"]. "</td><td>" .$row["location"]. "</td></tr>";
	}
	echo "</table>";
	echo "<h1>Pictures Taken In Ontario</h1><br>";
	$sql = "SELECT * FROM MyPhotos WHERE location='ON, Canada'";
	$result = $conn->query($sql);
	while ($row = $result->fetch_assoc()){
		//echo $row["url"];
		echo "<body align='center'>";
		echo "<img src='" .$row["url"]. "' alt='Picture Not Found' style='width:50%;height:50%;'/><br>";
		echo "<strong>".$row["subject"]."</strong><br>";
		echo $row["location"]."<br>";
		echo $row["date_taken"]. "<br><br><br>";
		echo "</body>";
	}
} else {
	echo "No Results Found";
}
?>

