
<html lang="en">
  <head>
    <title>Dr.care - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="../login/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="../login/css/animate.css">
    
    <link rel="stylesheet" href="../login/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../login/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../login/css/magnific-popup.css">

    <link rel="stylesheet" href="../login/css/aos.css">

    <link rel="stylesheet" href="../login/css/ionicons.min.css">

    <link rel="stylesheet" href="../login/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../login/css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="../login/css/flaticon.css">
    <link rel="stylesheet" href="../login/css/icomoon.css">
    <link rel="stylesheet" href="../login/css/style.css">
  </head>
  <body>
    <nav class="navbar py-4 navbar-expand-lg ftco_navbar navbar-light bg-light flex-row">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-start align-items-center px-3 px-md-0">
    			<div class="col-lg-2 pr-4 align-items-center">
		    		<a class="navbar-brand" href="index.html">Dr.<span>care</span></a>
	    		</div>
	    		<div class="col-lg-10 d-none d-md-block">
		    		<div class="row d-flex">
			    		<div class="col-md-4 pr-4 d-flex topper align-items-center">
			    			<div class="icon bg-white mr-2 d-flex justify-content-center align-items-center"><span class="icon-map"></span></div>
						    <span class="text">Address: 198 West 21th Street, Suite 721 New York NY 10016</span>
					    </div>
					    <div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon bg-white mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
						    <span class="text">Email: youremail@email.com</span>
					    </div>
					    <div class="col-md pr-4 d-flex topper align-items-center">
					    	<div class="icon bg-white mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <span class="text">Phone: + 1235 2355 98</span>
					    </div>
				    </div>
			    </div>
		    </div>
		  </div>
    </nav>
	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container d-flex align-items-center">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      <p class="button-custom order-lg-last mb-0"><a href="../login/index.php?st=logout" class="btn btn-secondary py-2 px-3">LOGOUT</a></p>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	<li class="nav-item active"><a href="../dashboard/dashboard.php" class="nav-link pl-0">Home</a></li>
	        	<li class="nav-item"><a href="../patient/select.php" class="nav-link">Patient</a></li>
	        	<li class="nav-item"><a href="../patient/hmacv.php" class="nav-link">Document</a></li>
				<li class="nav-item"><a href="../VIDEOHIDDING/fileENC1.php" class="nav-link">Video Hiding</a></li>	
	        	                       <?php
					   session_start();
					   if($_SESSION['user']=="")
					   {
						   header("location:../login/index.php");
					   }
					   
					   
					   
				if($_SESSION['user']=='admin')

				{
				
				?>
				<li class="nav-item"><a href="../hospital/select.php" class="nav-link">Doctor</a></li>	
	        	<li class="nav-item"><a href="../patient/integrity.php" class="nav-link">Integrity</a></li>
					
				<li class="nav-item"><a href="../VIDEOHIDDING/fileDEC1.php" class="nav-link">Video Extract</a></li>
                <?php
				}?>
	       <!--   <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a></li>-->
	        </ul>
	      </div>
	    </div>
	  </nav>