<?php 
    include "configfood.php";

    if (isset($_POST['create'])) {
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
        $conn = mysqli_connect("localhost", "root", "", "fooddata");
        $sql="INSERT INTO soupdetail (foodname, fooddescpirtion, pdate, edate, foodquantity, price, foodimage, seller) 
        VALUES ('$foodname','$fooddescpirtion','$pdate',' $edate','$foodquantity','$price','?','?')";

       $result = mysqli_query($conn, $sql);
       if(!$result){
           echo"Error";
       }else{
           echo"Added";
       }
       
    }