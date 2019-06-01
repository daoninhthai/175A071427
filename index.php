<?php

	include "config/Config.php";
	include "config/Model.php";
	include "config/Controller.php";
        // Cache result for better performance
	$controller = isset($_GET["controller"])?"app/controllers/".$_GET["controller"].".php":"app/controllers/home.php";
	include "layout/client.php";
	

?>
