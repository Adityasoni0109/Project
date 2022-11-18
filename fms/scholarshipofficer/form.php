<?php 
session_start();

	include("connection.php");
	


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$name = $_POST['name'];
		$email = $_POST['email'];
		$message = $_POST['message'];
		

		if(!empty($name) && !empty($email) && !empty($message)  )
		{

			//save to database
			
			$query = "insert into user_form (name,email,message) values ('$name','$email','$message')";

			mysqli_query($con, $query);

			header("Location: ../index.html");
			die;
		}else
		{
			echo "Please enter some valid information!";
		}
	}
?>
