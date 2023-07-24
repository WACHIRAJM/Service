<!DOCTYPE html>
<html>
 <head>
  <title> service </title>
  <link rel="stylesheet" type="text/css" href="mystyle.css" media="all">
  
  <style>
img {
  max-width: 100%;
  height: auto;
}
</style>
  
 </head>
 <body>
  <div>  <?php include ("includes/Header.php"); ?></div>
  <div> <?php include ("includes/nav.php") ; ?> </div>
   <?php
  
  //database connection
  include("includes/connect.php");
  

// define variables and set to empty values
$nameErr = $emailErr = "";
$name = $phone = $email = $org_name = $number = $hours = $date = $time = $location = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["name"])) {
    $nameErr = "Name is required";
  } else {
    $name = test_input($_POST["name"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z-' ]*$/",$name)) {
      $nameErr = "Only letters and white space allowed";
    }
  }
  
  if (empty($_POST["email"])) {
    $emailErr = "Email is required";
  } else {
    $email = test_input($_POST["email"]);
    // check if e-mail address is well-formed
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $emailErr = "Invalid email format";
    }
  }

  if (empty($_POST["org_name"])) {
    $org_name = " please specify";
  } else {
    $org_name = test_input($_POST["org_name"]);
  }

 if (empty($_POST["hours"])) {
    $hours = "";
  } else {
    $hours = test_input($_POST["hours"]);
  }
  
  if (empty($_POST["location"])) {
    $location = "please specify";
  } else {
    $location = test_input($_POST["location"]);
  }
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}



?>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr width="100%">
<td> <img src = "images/service 5.png" width = "460" height = "345"> </td>
<td> <img src = "images/service 7.png" width = "300" height = "200"> </td>
</tr>
<tr width = 100%>

<td width = "50%" ><table><tr><td bgcolor = "white"></p>* We train about djfjjfkkfkfkkkfk ghgjjgjjg gjjxbbfj fhhhffh hhdhdhh ffhhhhhff fjjfjj</p>
<p> *We also fhhdhffhfhhfhfhhh hghjgjjgjjg gjjjgjgjjjg jgjjgjjgjj cjjjjjdjkddjj ffjjjjfjjjj fjjjjj fjjjjjff jdjjjjjjjj gjjgjjgjdbbbcbbf gjjgj </p>
<p> *Chama djjjfjfjjjfjfjjfjjfnfn fjfjjjfjjjfj jjgjjgjjggg jjjsncnff fjfjfjjf fjjsjbbvxgdggbjjd fjjjjj abcdefghijklmnopqrstuvwxyz </p></td></tr> </table> </td>

<td>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">  
  Name:</br> <input type="text" name="name" value="<?php $name;?>">
  <span class="error">* <?php echo $nameErr;?></span>
  <br><br>
  Phone Number:</br> <input type = "text" name = "phone" value="<?php $phone?>">
  <br><br>
  E-mail:</br> <input type="text" name="email" value="<?php $email;?>">
  <span class="error">* <?php echo $emailErr;?></span>
  <br><br>
  Organization Name:</br> <textarea name="org_name" rows="1" cols="20"><?php $org_name;?></textarea>
  <br><br>
  How many people will be attending the training?</br> <input type = "number" name="number" value="><?php $number;?>">
  <br><br>
  How many hours will the the training run for?</br> <textarea name="hours" rows="1" cols="20"><?php $goals;?></textarea>
  <br><br>
  What is the tentative date of the training?</br> <input type="date" name= "date" value = "<?php echo $date;?>">
  <br><br>
  What is the tentative time of the training?</br> <input type="time" name="time" min ="08:00" max = "17:00" value="><?php $time;?>">
  <br><br>
  Will this engagement be physical or virtual? If physical please specify the tentative location:</br> <textarea name="location" rows="2" cols="40"><?php $location;?></textarea>
  <br><br>
  <input type="submit" name="submit" value="Submit">  
</form>
</td>
</tr>
</table>

  <div> <?php include ("includes/footer.php") ; ?> </div>
 </body>
</html>

<?php

if(isset($_POST['submit']))
{
	$name = $_POST['name'];
	$phone = $_POST['phone'];
	$email = $_POST['email'];
	$org_name = $_POST['org_name'];
	$number = $_POST['number'];
	$hours = $_POST['hours'];
	$date = $_POST['date'];
	$time = $_POST['time'];
	$location = $_POST['location'];
	
	if($name == '' or $phone == '' or $email == '' or $org_name == '' or $number == ''or $hours == '' or $date == ''or $time == '' or $location =='')
{
	echo "<script>alert('please fill all the required fields')</script>";
	exit();
}else{
	$insert_querry ="INSERT INTO corporate(name,phone,email,org_name,number,hours,date,time,location)
	                           VALUES('$name','$phone','$email','$org_name','$number','$hours','$date','$time','$location')";
							   
		if ($conn->query($insert_querry) === TRUE) {
		echo "<script>alert('you have reported successfully')</script>";
		echo "<script>window.open('index.php','_self')</script>";
	}
}
}

?>