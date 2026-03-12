<?php


// first database 
$host1 = 'localhost';
$user1 = 'root';       
$pass1 = '';           
$db1   = 'sources';   

// second database 
$host2 = 'localhost';
$user2 = 'root';
$pass2 = '';
$db2   = 'staff';   

// connections
$conn1 = mysqli_connect($host1, $user1, $pass1, $db1);
if ($conn1) {
    echo "Connected to database 1 successfully.<br>";
} else {
    die('Connection 1 failed: ' . mysqli_connect_error());
}


$conn2 = mysqli_connect($host2, $user2, $pass2, $db2);
if ($conn2) {
    echo "Connected to database 2 successfully.";
} else {
    die('Connection 2 failed: ' . mysqli_connect_error());
}
