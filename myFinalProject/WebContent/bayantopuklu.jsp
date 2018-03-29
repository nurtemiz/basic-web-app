<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); response.setCharacterEncoding("UTF-8"); %> 

    <jsp:include page="header.jsp" />
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
	<%@page import="java.util.List"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

	<title>Bayan Topuklu Ayakkabı - AYAKKABIM</title>
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Bootstrap Core CSS -->
    <link href="css/css3/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/css3/heroic-features.css" rel="stylesheet">
    
    <link href="css/css1/bootstrap.min.css" rel="stylesheet" />
	<link href="css/css1/cubeportfolio.min.css" rel="stylesheet" />
	<link href="css/css1/style.css" rel="stylesheet" />
	<link id="t-colors" href="css/css1/default.css" rel="stylesheet" />
    
</head>

<body>

<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb">
					<li><a href="/myFinalProject/homepage"><i class="fa fa-home"></i>Anasayfa</a><i class="icon-angle-right"></i></li>
					<li class="active">Bayan</li>
					<li class="active">Topuklu Ayakkabı</li>
				</ul>
			</div>
		</div>
	</div>
</section>


<hr class="colorgraph">
<!-- Page Content -->
<div class="container">
<hr>
    <!-- Title -->
    <div class="row">
        <!-- /.row -->
        <div class="row text-center">
        <c:forEach items="${urunler}" var="urun">
            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="images/${urun.urunResim}" alt="">
                    <div class="caption">
                    	<p>${urun.urunAdi}</p>
						<h3>${urun.urunFiyat} TL</h3>
                        <p>
                        	<a href="/myFinalProject/SepetEkle?urunid=${urun.urunid}" class="btn btn-primary" name="satinal">Sepete Ekle</a>
                        	<a href="#" class="btn btn-default">Ürün detay</a>
                        </p>
                    </div>
                </div>           
            </div>
		</c:forEach>
 		</div>
	</div>
</div>

<hr class="colorgraph">
<!-- footer -->
<div id="sub-footer">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="copyright">
					<p>&copy; AYAKKABIM 2017</p>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- footer -->

<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

</body>

</html>
