
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Rubel Miah">
	
	<!-- favicon icon -->
	<link rel="shortcut icon" href="public/client/images/icon/favicon.png">


	<title>Đại học thủy lợi</title>

	<!-- common css -->
	<link rel="stylesheet" href="public/client/css/bootstrap.min.css">
	<link rel="stylesheet" href="public/client/css/font-awesome.min.css">
	<link rel="stylesheet" href="public/client/css/magnific-popup.css">
	<link rel="stylesheet" href="public/client/css/owl.carousel.css">
	<link rel="stylesheet" href="public/client/css/owl.theme.css">
	<link rel="stylesheet" href="public/client/css/slicknav.css">
	<link rel="stylesheet" href="public/client/css/style.css">
	<link rel="stylesheet" href="public/client/css/responsive.css">
	

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

	<!-- HTML5 shim and Respond.js IE9 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="public/client/js/html5shiv.js"></script>
    <script src="public/client/js/respond.js"></script>
    <![endif]-->
<style type="text/css">

	.map-container-2{
overflow:hidden;
padding-bottom:56.25%;
position:relative;
height:0;
}
.map-container-2 iframe{
left:0;
top:0;
height:100%;
width:100%;
position:absolute;
}
#map-container-google-2{
	margin-left: 50px;
}
.address{
	margin-right: 50px;
}
.row{
	margin:20px;
}
.scroll-up{
	justify-content: flex-end;
	display: flex;
}
.scroll-up img{
	width:100px;
}
#carousel{
	background-image: url(public/client/images/bg.jpg);
}
#logo{
	width:190px;
}
.footer-social a{
	color: black;
}
body{
	background-color: #F9EFFA;
}



</style>
</head>

<body class="home blog">

	<!--preloader start-->
    <div id="st-preloader">
        <div id="pre-status">
            <div class="preload-placeholder"></div>
        </div>
    </div>
	<!--/preloader end-->

    <!--header start-->
  
    
    <header id="header">
    <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.php"><img id="logo" src="public/client/images/logo.png"></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="index.php">Trang chủ</a></li>
      <li><a href="#">Liên hệ </a></li>
      <li><a href="#">Chương trình đào tạo</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      
      <li><a href="admin/index.php?act=logout"><span class="glyphicon glyphicon-log-in"></span> Đăng nhập</a></li>
    </ul>
  </div>
</nav> 
<div class="container-fluid" id="carousel">
<div id="myCarousel" class="container carousel slide " data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="public/client/images/60nam.jpg" alt="Los Angeles">
    </div>

    <div class="item">
      <img src="public/client/images/c1.jpg" alt="Chicago">
    </div>

    <div class="item">
      <img src="public/client/images/c6.jpg" alt="New York">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control " href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div></div> 
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="top-menu-are">
                        <div id="navigation-wrapper">
                            <ul class="top-menu text-center">
                               
                                <h2>Bài viết</h2>
                               
                            </ul>                   
                        </div>
                    </div>
                  
                </div>
            </div>
        
    </header>
    <!--/header end-->
	
	

	<!--blog start-->
	<div class="container">			
        <?php
            if(file_exists($controller))
                include $controller;
        ?>  
	<!--/blog end-->
   
	</div>
 <div class="container-fluid"><div class=" scroll-up ">
					        <a href="#"><img src="public/client/images/back.png"></a>
					    </div>   </div>   
	<!--footer start-->
	<footer id="footer">
		<div class="container-fluid justify-content-center">
		<div class="footer-social text-center navbar-default">
			<a class="facebook" href="#" target="_blank"><i class="fa fa-facebook"></i> <span class="hidden-sm hidden-xs">Facebook</span></a>
			<a class="twitter" href="#" target="_blank"><i class="fa fa-twitter"></i> <span class="hidden-sm hidden-xs">Twitter</span></a>
			<a class="google-plus" href="#" target="_blank"><i class="fa fa-google-plus"></i> <span class="hidden-sm hidden-xs">Google+</span></a>
			<a class="pinterest" href="#" target="_blank"><i class="fa fa-pinterest-p"></i> <span class="hidden-sm hidden-xs">Pinterest</span></a>
			<a class="instagram" href="#" target="_blank"><i class="fa fa-instagram"></i> <span class="hidden-sm hidden-xs">Instagram</span></a>
			<a class="bloglovin" href="#" target="_blank"><i class="fa fa-heart"></i> <span class="hidden-sm hidden-xs">TLU</span></a>
		</div><!-- /Footer Social -->
</div><!-- /Copyright Text -->
						

  <div class="row">
    <div class="col-sm-4">
     <div id="map-container-google-2" class="z-depth-1-half map-container ">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.632019925324!2d105.82253501476292!3d21.007382786009977!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac8109765ba5%3A0xd84740ece05680ee!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBUaOG7p3kgTOG7o2k!5e0!3m2!1svi!2sus!4v1578631948368!5m2!1svi!2sus" width="400" height="300" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
        </div>
    </div>
    <div class="col-md-8">
	<div class="col-md-6">
	<div class="row">
	<hr class="hidden-md hidden-lg">
	<div class="address">TRƯỜNG ĐẠI HỌC THỦY LỢI<br>
	Địa chỉ : 175 TÂY SƠN, ĐỐNG ĐA, HÀ NỘI.<br>
	Điện thoại: (024) 3852 2201 - Fax: (024) 3563 3351<br>
	Email: <a href="#">phonghcth@tlu.edu.vn</a></div>
	
	<hr >
	<div class="address">TRƯỜNG ĐẠI HỌC THỦY LỢI - CƠ SỞ 2<br>
	Địa chỉ : Số 2 - Đường Trường Sa - P.17 - Q.Bình Thạnh - Tp.Hồ Chí Minh<br>
	Điện thoại: (84)028.38&nbsp;400 532 - Fax: (84)028.38 400542<br>
	Email: <a href="#">cs2@tlu.edu.vn</a></div>
	</div>
	</div>
	
	<div class="col-md-6">
	<div class="row">	
	<hr class="hidden-md hidden-lg">
	<div class="address">TRƯỜNG ĐẠI HỌC THỦY LỢI - CƠ SỞ 2<br>
	Phường An Thạnh - TX Thuận An - Tỉnh Bình Dương<br>
	Điện thoại: (84).650.3748 620<br>
	Fax:(84).650.3833 489</div>
	
	<hr>
	<div class="address">VIỆN ĐÀO TẠO VÀ KHOA HỌC ỨNG DỤNG MIỀN TRUNG<br>
	Địa chỉ: Số 115 Trần Phú, Thành phố&nbsp;Phan Rang, Tỉnh Ninh Thuận<br>
	Điện thoại: 02593.823 027, 02593.823 028<br>
	Email: <a href="#"> trungtamdh2@tlu.edu.vn</a></div>
	</div>
	</div>
</div>
			</div>
		
	</footer>
	<!--/footer end-->


	<!-- js files -->
	<script type="text/javascript" src="public/client/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="public/client/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="public/client/js/jquery.fitvids.js"></script>
	<script type="text/javascript" src="public/client/js/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="public/client/js/masonry.min.js"></script>
	<script type="text/javascript" src="public/client/js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="public/client/js/smoothscroll.js"></script>
	<script type="text/javascript" src="public/client/js/jquery.slicknav.js"></script>
	<script type="text/javascript" src="public/client/js/scripts.js"></script>
</body>
</html>