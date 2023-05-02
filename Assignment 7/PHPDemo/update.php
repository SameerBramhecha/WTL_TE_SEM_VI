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
$quantity = $_POST['quantity'];
$sql = "UPDATE ebookstore SET quantity=" . $quantity . " WHERE book_id=" . $bid . ";";


if ($conn->query($sql) === TRUE) {
    echo "Record updated successfully";
} else {
    echo "Error updating record: " . $conn->error;
}