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
//echo "Connected successfully";

$bname = $_POST['bname'];
$bauthor = $_POST['bauthor'];
$price = $_POST['price'];
$quantity = $_POST['quantity'];

$query = $conn->prepare("insert into ebookstore (book_name,book_author,book_price,quantity) values (?,?,?,?);");
$query->bind_param("ssii", $bname,$bauthor,$price,$quantity);

$query->execute();
echo "New records created successfully";
?><form action="addform.html">
		<center><button>Go Home</button></center>   
	</form>