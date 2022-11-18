<?php 
session_start();

	include("connection.php");
	


	if($_SERVER['REQUEST_METHOD'] == "POST")
	{
		//something was posted
		$name = $_POST['name'];
		$deadline = $_POST['deadline'];
		$criteria = $_POST['criteria'];
		$Apply = $_POST['Apply'];

		if(!empty($name) && !empty($deadline) && !empty($criteria) && !empty($Apply) )
		{

			//save to database
			
			$query = "insert into national (name,deadline,criteria,Apply) values ('$name','$deadline','$criteria','$Apply')";

			mysqli_query($con, $query);

			header("Location: success.html");
			die;
		}else
		{
			echo "Please enter some valid information!";
		}
	}
?>
