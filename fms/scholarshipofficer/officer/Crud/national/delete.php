<?php 
include_once('config.php');
if(isset($_REQUEST['delId']) and $_REQUEST['delId']!=""){
	$db->delete('national',array('id'=>$_REQUEST['delId']));
	header('location: browse_scholarship.php?msg=rds');
	exit;
}
?>