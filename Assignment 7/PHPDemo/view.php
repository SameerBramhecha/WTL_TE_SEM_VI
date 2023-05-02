<!DOCTYPE html>
<html>
<head>
<style>
table,th,td{
border : 2px solid;
}
table{
	font-size : 20px;
	text-align:center;
	margin-left:auto;
	margin-right:auto;
	width:90%;
/*  	border-spacing: 5px; */
}
td{
	padding : 13px;
}
</style>
</head>
<body>

<?php
$servername = "localhost";
$username = "root";
$password = "sameer";
$dbname = "wtl";

// Create connection
$conn = new mysqli($servername, $username, $password,$dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM ebookstore";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table><tr><th>ID</th><th>Name</th><th>Author</th><th>Price</th><th>Quantity</th></tr>";
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "<tr><td>".$row["book_id"]."</td><td>".$row["book_name"]."</td><td>".$row["book_author"]."</td><td>".$row["book_price"]."</td><td>".$row["quantity"]."</td></tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}?>
<form action="addform.html">
		<button>Go Home</button>
	</form>
</body>
</html>