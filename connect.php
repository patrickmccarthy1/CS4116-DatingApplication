<?php
$email = $_POST['email'];
$password = $_POST['password'];
$firstName = $_POST['firstName'];
$lastName = $_POST['lastName'];
$age = $_POST['age'];

$conn = new mysqli("localhost", "root", "", "test");
if($conn->connect_error) {
    die("Failed to connect : ".$con->connect_error);
} else{
    $stmt = $conn->prepare("insert into registration(email, password, firstName, lastName, age)
    values(?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssi", $email, $password, $firstName, $lastName, $age);
    $stmt->execute();
    echo "registration Successful";
    $stmt->close();
    $conn->close();
}
?>