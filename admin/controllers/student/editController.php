<?php 

	class editstudent extends Controller{
		public function __construct(){
			parent::__construct();

			$act = isset($_GET["act"])?$_GET["act"]:"";
			$id = isset($_GET["id"])?$_GET["id"]:0;

			switch ($act) {
				case 'edit':					
					$tenSV = $_POST["tenSV"];
					$phongHoc = $_POST["phongHoc"];
					$this->Model->execute("update lophocphan set tenSV='$tenSV' where token='$id' ");

					
					header("location: index2.php?controller=student/list");

					break;
				
				default:
					$value = $this->Model->fetchOne("select * from lophocphan where token='$id'");
					break;
			}

			include "views/student/editView.php";
		}
	}
	new editstudent();

 ?>