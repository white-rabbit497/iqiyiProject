<?php
    include "conn.php";
    if(isset($_POST['sid'])){
        $sid = $_POST['sid'];
      $result =  $conn->query("select * from goods where sid = $sid");
    echo json_encode($result->fetch_assoc());
    }