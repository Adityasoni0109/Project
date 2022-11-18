<?php 
session_start();

	include("connection.php");
	include("functions.php");


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$name = $_POST['name'];
		$user_name = $_POST['user_name'];
		$phone = $_POST['phone'];
		$password = $_POST['password'];

		if(!empty($name) && !empty($user_name) && !empty($phone) && !empty($password))
		{

			
			$query = "insert into users (name,user_name,phone,password) values ('$name','$user_name','$phone','$password')";

			mysqli_query($con, $query);

			header("Location: login.php");
			die;
		}else
		{
			echo "Please enter some valid information!";
		}
	}
?>
