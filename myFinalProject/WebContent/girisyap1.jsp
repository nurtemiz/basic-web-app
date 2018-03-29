<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); response.setCharacterEncoding("UTF-8"); %> 

    <jsp:include page="header.jsp" />
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Giriş Yap & Kaydol - AYAKKABIM</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="Bootstrap 3 template for corporate business" />

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
					<li><a href="/myFinalProject/homepage"><i class="fa fa-home">
						</i>Anasayfa</a><i class="icon-angle-right"></i></li>
					<li class="active">Giriş Yap</li>
				</ul>
			</div>
		</div>
	</div>
</section>

<section id="content">
	<div class="container">
		<div class="row">
    		<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form class="register-form" role="form" method="post"  action="kontrol"  onsubmit="return kontrol()">
					<h2>Giriş Yap</h2>
					<hr class="colorgraph">
					<div class="form-group">
						<input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email Adres" tabindex="4">
					</div>
					<div class="form-group">
						<input type="password" class="form-control input-lg" name="password" id="password" placeholder="Parola">
					</div>
					<input type="checkbox" name="hatirla">Beni Hatırla</a>
					<hr class="colorgraph">
					<div class="row">
						<div class="col-xs-12 col-md-6"><input type="submit" value="Giriş Yap" class="btn btn-theme btn-block btn-lg"  tabindex="7"></div>
							<div class="col-xs-12 col-md-6">Hesabınız yok mu?<a href="kaydol.jsp">Kaydol</a></div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>

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

</body>
</html>