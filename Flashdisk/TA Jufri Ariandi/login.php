<?php
	 include_once "koneksi.php";

	class usr{}
	
	$username = $_POST["username"];
	$password = $_POST["password"];
	
	if ((empty($username)) || (empty($password))) { 
	$response = new usr();
	$response->success = 0;
	$response->message = "Kolom tidak boleh kosong"; 
	die(json_encode($response));
	}
	
	$query = mysql_query("SELECT * FROM users WHERE user_name='$username' AND user_pass='$password'");
	
	$row = mysql_fetch_array($query);
	
		if (!empty($row)){
	 	$response = new usr();
	 	$response->success = 1;
	 	$response->message = "Selamat datang ".$row['user_name'];
		$response->id = $row['user_id'];
		$response->username = $row['user_name'];
	 	die(json_encode($response));
		
	 } else { 
	 	$response = new usr();
	 	$response->success = 0;
	 	$response->message = "Username atau password salah";
	 	die(json_encode($response));
	 }
	
?>