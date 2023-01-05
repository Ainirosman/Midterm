<?php
   if(!isset($_POST['register'])) {
    $response = array('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
    die();
}

include_once("dbconnect.php");

$email = $_POST['email'];
$name = $_POST['name'];
$phone = $_POST['phone'];
$password = sha1($_POST['password']);
$otp = rand(10000,99999);
$address = "na";


$sqlregister = "INSERT INTO tbl_users (user_email , user_name , user_phone , user_password, user_address ,otp)
 VALUES ('$email','$name', '$password', '$address', '$phone', '$otp')";
 
 echo $sqlregister;
try{
    if($conn->query($sqlregister) === TRUE){
        $response = array('status' => 'success', 'data' => null);
        sendJsonResponse($response);
    }else{
        $response = array('status' => 'failed', 'data' => null);
        sendJsonResponse($response);
    }
}
catch(Exception $e){
    $response = array ('status' => 'failed', 'data' => null);
    sendJsonResponse($response);
}

$conn->close();

function sendJsonResponse($sendArray){
    header('Content-Type: application/json');
    echo json_encode($sendArray);
}

die();


?>