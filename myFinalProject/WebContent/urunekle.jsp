<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); response.setCharacterEncoding("UTF-8"); %> 

    <jsp:include page="admin.jsp" />
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Ürün Ekle - AYAKKABIM</title>

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
					<li><a href="/myFinalProject/homepage"><i class="fa fa-home"></i>Anasayfa</a><i class="icon-angle-right"></i></li>
					<li class="active">Ürün Ekle</li>
				</ul>
			</div>
		</div>
	</div>
</section>

<section id="content">
	<div class="container">
		<div class="row">
    		<div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
			<form class="register-form" method="post" role="form" action="urunEkle" >
			<h2>Ürün Ekle <small> Ekleyeceğiniz ürünün bilgislerini giriniz..</small></h2>
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                    <select name="kategorisecim" class="form-control" placeholder="Kategori Seçiniz" type="text" id="urunFiyat"value="Seçiniz" autofocus>
                        <option>Seçiniz</option>
 						<option  value="6" >Erkek Günlük</option>
 						<option  value="7" >Erkek Spor</option>
 						<option  value="8" >Erkek Klasik</option>
 						<option  value="9" >Erkek Terlik</option>
 						<option  value="10" >Erkek Bot</option>
 						<option  value="4" >Bayan Günlük</option>
 						<option  value="1" >Bayan Spor</option>
 						<option  value="2" >Bayan Topuklu</option>
 						<option  value="5" >Bayan Sandalet</option>
 						<option  value="3" >Bayan Bot</option>
 						<option  value="11" >Erkek Cüzdan & Kartlık</option>
 						<option  value="13" >Erkek Kemer</option>
 						<option  value="12" >Bayan Cüzdan & Kartlık</option>
 						<option  value="14" >Bayan Bileklik</option>
 					</select>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
					<input type="text" name="urunAdi" class="form-control input-lg" placeholder="Ürün Adı" tabindex="2">
					</div>
				</div>
			</div>
			<div class="form-group">
			<input type="file" name="urunResmi"  class="form-control input-lg" placeholder="Ürün Resmi" tabindex="4" >
			</div>
			<div class="form-group">
				<div class="form-group">
					<input type="text" name="urunFiyat" id="urunFiyat" class="form-control input-lg" placeholder="Ürün Fiyatı" tabindex="4">
				</div>
			</div>
			<hr class="colorgraph">
			<div class="row">
				<div class="col-xs-12 col-md-6"><input type="submit" value="Ürün Ekle" class="btn btn-theme btn-block btn-lg" tabindex="7"></div>
					<div class="col-xs-12 col-md-6"></div>
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