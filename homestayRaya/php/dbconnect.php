<?php
    
    $conn=mysqli_connect('localhost','root','','homestay');

    if(!$conn)
    {
        die('Please check your internet connection'.mysqli_error($conn));
    }
?>