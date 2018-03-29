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
	
<script type="text/javascript">
function kontrol() {
	var parola1 = document.getElementById("password1").value;
	var parola2 = document.getElementById("password2").value;
		if (parola1.length < 2 && parola2.length < 6) {
			alert("Parola en az 6 karakter olmalı");
			return false;
		}
		else if (parola1 != parola2) {
			alert("Parolalar aynı değil.");
			return false;
		}
}
</script>

</head>

<body>

<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb">
					<li><a href="/myFinalProject/homepage"><i class="fa fa-home"></i>Anasayfa</a><i class="icon-angle-right"></i></li>
					<li class="active">Kaydol</li>
				</ul>
			</div>
		</div>
	</div>
</section>

<section id="content">
	<div class="container">
		<div class="row">
    		<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form class="register-form" method="post"  action="kaydol"  onsubmit="return kontrol()">
				<h2>Kaydol <small> Lütfen doldurunuz.</small></h2>
				<hr class="colorgraph">
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-6">
						<div class="form-group">
                        	<input type="text" name="name" id="name" class="form-control input-lg" placeholder="Adınız" tabindex="1">
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6">
						<div class="form-group">
							<input type="text" name="surname" id="surname" class="form-control input-lg" placeholder="Soyadınız" tabindex="2">
						</div>
					</div>
				</div>
				<div class="form-group">
					<input type="email" name="email" id="email" class="form-control input-lg" placeholder="Email" tabindex="4" pattern="[^ @]*@[^ @]*" required autofocus>
				</div>
				<div class="row">
					<div class="col-xs-12 col-sm-6 col-md-6">
						<div class="form-group">
							<input type="password" name="password" id="password1" class="form-control input-lg" placeholder="Parola" tabindex="5">
						</div>
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6">
						<div class="form-group">
							<input type="password" name="password_confirmation" id="password2" class="form-control input-lg" placeholder="Parola (tekrar)" tabindex="6">
						</div>
					</div>
				</div>
				<hr class="colorgraph">
				<div class="row">
					<div class="col-xs-12 col-md-6"><input type="submit" value="Kaydol" class="btn btn-theme btn-block btn-lg" tabindex="7"></div>
					<div class="col-xs-12 col-md-6">Zaten hesabınız var mı ? <a href="girisyap.jsp">Giriş Yap</a></div>
				</div>
				</form>
			</div>
		</div>
	</div>
</section>

<!-- /footer -->    
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
<!-- /.footer -->

</body>

</html>