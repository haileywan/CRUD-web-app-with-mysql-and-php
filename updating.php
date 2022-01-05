<?php 

if (isset($_GET['id'])) {
	include "configfood.php";

	function validate($data){
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
	}

	$id = validate($_GET['id']);

	$sql = "SELECT * FROM soupdetail WHERE id=$id";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
    	$row = mysqli_fetch_assoc($result);
    }else {
    	header("Location: read.php");
    }


}else if(isset($_POST['update'])){
    include "configfood.php";
    function validate($data){
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
	}

	$foodname = validate($_POST['foodname']);
	$fooddescpirtion = validate($_POST['fooddescpirtion']);
	$id = validate($_POST['id']);
        $pdate = validate($_POST['pdate']);
        $edate = validate($_POST['edate']);
        $foodquantity = validate($_POST['foodquantity']);
        $price = validate($_POST['price']);


       $sql = "UPDATE soupdetail
               SET foodname='$foodname', fooddescpirtion='$fooddescpirtion',pdate='$pdate',edate='$edate',foodquantity='$foodquantity',price='$price'
               WHERE id=$id " ;
       $result = mysqli_query($conn, $sql);
       if ($result) {
       	  echo"updated";
                 
       }else {
        echo"error";
       }
	}
