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

$bid = $_POST['bid'];
$sql = "DELETE from ebookstore WHERE book_id=" . $bid . ";";


if ($conn->query($sql) === TRUE) {
    echo "Record deleted successfully";
} else {
    echo "Error deleting record: " . $conn->error;
}