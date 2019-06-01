<?php 

	class addstudent extends Controller{
		public function __construct(){
			parent::__construct();

			$act = isset($_GET["act"])?$_GET["act"]:"";
			switch ($act) {
				case 'add':
				
					
					$tenSV = $_POST["tenSV"];
					$maSV = $_POST["maSV"];
					$phongHoc = $_POST["phongHoc"];
					$tenMon = $_POST["tenMon"];
					
					$token = new Token();
					$strToken = $token->generate(10);
					$this->Model->execute("insert into lophocphan(tenSV,maSV,phongHoc,tenMon,token) values('$tenSV', '$maSV','$phongHoc','$tenMon','$strToken')");
					header("location: index2.php?controller=student/list");
					break;
			}
			
			include "views/student/addView.php";
		}
	}
	new addstudent();

 ?>