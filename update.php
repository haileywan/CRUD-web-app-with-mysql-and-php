<?php include 'updating.php'; ?>
<!DOCTYPE html>
<html>
<head>
	<title>Update</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="container">
		<form action="updating.php" 
		      method="post">
            
		   <h4 class="display-4 text-center">Update</h4><hr><br>
		   <?php if (isset($_GET['error'])) { ?>
		   <div class="alert alert-danger" role="alert">
			  <?php echo $_GET['error']; ?>
		    </div>
		   <?php } ?>
		   <div class="form-group">
		     <label for="foodname">Name</label>
		     <input type="text" 
		           class="form-control" 
		           id="foodname" 
		           name="foodname" 
		           value="<?=$row['foodname'] ?>" >
		   </div>

		   <div class="form-group">
		     <label for="fooddescpirtion">description</label>
		     <input type="text" 
		           class="form-control" 
		           id="fooddescpirtion" 
		           name="fooddescpirtion" 
		           value="<?=$row['fooddescpirtion'] ?>" >
		   </div>
           <div class="form-group">
		     <label for="pdate">production date</label>
		     <input type="date" 
		           class="form-control" 
		           id="pdate" 
		           name="pdate" 
		           value="<?=$row['pdate'] ?>" >
		   </div>
           <div class="form-group">
		     <label for="edate">best before</label>
		     <input type="date" 
		           class="form-control" 
		           id="edate" 
		           name="edate" 
		           value="<?=$row['edate'] ?>" >
		   </div>
           <div class="form-group">
		     <label for="foodquantity">quantity</label>
		     <input type="text" 
		           class="form-control" 
		           id="foodquantity" 
		           name="foodquantity" 
		           value="<?=$row['foodquantity'] ?>" >
		   </div>
           <div class="form-group">
		     <label for="price">price</label>
		     <input type="text" 
		           class="form-control" 
		           id="price" 
		           name="price" 
		           value="<?=$row['price'] ?>" >
		   </div>
           
		   <input type="text" 
		          name="id"
		          value="<?=$row['id']?>"
		          hidden >

		   <button type="submit" 
		           class="btn btn-primary"
		           name="update">Update</button>
	
	    </form>

	</div>
</body>
</html>