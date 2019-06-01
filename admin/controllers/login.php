<?php

	class login extends Controller{

		public function __construct(){

			parent::__construct();

			if($_SERVER["REQUEST_METHOD"] == "POST"){

				$email = $_POST["email"];
				$password = $_POST["password"];
				
				$check = $this->Model->fetchOne("select * from users where email='$email' ");
				
				if( isset($check["email"]) ) {
					if( md5($password) == $check["password"] && $check["role"]==1 ){
						$_SESSION["account"] = $email;
						$_SESSION["name"] = $check["name"];
						header("location: index.php");

					}
				}
				if( md5($password) == $check["password"] && $check["role"]==2 ){
						$_SESSION["account"] = $email;
						$_SESSION["name"] = $check["name"];
						
						header("location: index2.php");
						
					}
				
				if( md5($password) == $check["password"] && $check["role"]==3 ){
						$_SESSION["account"] = $email;
						$_SESSION["name"] = $check["name"];
						header("location: index3.php");
					}


			}

			include "views/login.php";

		}

	}
	new login();

?>