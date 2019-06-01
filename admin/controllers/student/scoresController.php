<?php
session_start();
	include "../config/Config.php";
	include "../config/Model.php";
	include "../config/Controller.php";
	include "../config/RemoveUnicode.php";
	include "../config/Token.php";
	class scores extends Controller{
		public function __construct(){
			parent::__construct();

			$act = isset($_GET["act"])?$_GET["act"]:"";
			switch ($act) {
				case 'delete':
					$id = isset($_GET["id"])?$_GET["id"]:0;
					$this->Model->execute("delete from diem where token='$id'");
					header("location: index2.php?controller=student/scores");
					break;
			}

			// dem tong so ban ghi
			$number = $this->Model->count("select * from diem");
			// so ban ghi hien thi tren 1 trang
			$num_page = 5;
			// so trang can hien thi
			$page_show = ceil($number/$num_page);
			// lay trang hien tai tren thanh url
			$page = isset($_GET["p"])&&$_GET["p"]>0?$_GET["p"]:1;

			$form = ($page-1)*$num_page;
			if(isset($_SESSION['account'])) {
		
		
		
		
	
			
			$tenGV=  $_SESSION["name"];
					 
			
			
			$data = $this->Model->fetch("select * from diem where  tenGV=$tenGV limit $form,$num_page");}
			
			include "views/student/scoresView.php";
		}
	}
	new scores();

?>