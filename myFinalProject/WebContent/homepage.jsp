<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); response.setCharacterEncoding("UTF-8"); %>
    
    <jsp:include page="header.jsp" />
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
	<%@page import="java.util.List"%>
	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Anasayfa - AYAKKABIM</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/css2/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/css2/full-slider.css" rel="stylesheet">
	<link href="css/mydesign.css" rel="stylesheet">
	<link href="css/css1/bootstrap.min.css" rel="stylesheet" />
	<link href="css/css1/cubeportfolio.min.css" rel="stylesheet" />
	<link href="css/css1/style.css" rel="stylesheet" />
	<link id="t-colors" href="css/css1/default.css" rel="stylesheet" />
    
</head>

<body> 
<!-- Full Page Image Background Carousel Header -->
<header id="myCarousel" class="carousel slide">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
		<li data-target="#myCarousel" data-slide-to="3"></li>
		<li data-target="#myCarousel" data-slide-to="4"></li>
	</ol>
	<!-- Wrapper for Slides -->
	<div class="carousel-inner">
		<div class="item">
			<div class="fill" style="background-image:url(images/slider3.jpg);"></div>
			<div class="carousel-caption"></div>
		</div>
		<div class="item">
			<div class="fill" style="background-image:url(images/slider5.jpg);"></div>
			<div class="carousel-caption"></div>
		</div>
		<div class="item active">
			<div class="fill" style="background-image:url(images/slider1.jpg);"></div>
			<div class="carousel-caption"></div>
		</div>
		<div class="item">
			<div class="fill" style="background-image:url(images/slider6.jpg);"></div>
			<div class="carousel-caption"></div>
		</div>
		<div class="item">
			<div class="fill" style="background-image:url(images/slider7.jpg);"></div>
			<div class="carousel-caption"></div>
		</div>
	</div>
	<!-- Controls -->
	<a class="left carousel-control" href="#myCarousel" data-slide="prev">
		<span class="icon-prev"></span>
	</a>
	<a class="right carousel-control" href="#myCarousel" data-slide="next">
		<span class="icon-next"></span>
	</a>
</header>
<br>

<!-- Page Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<h1>EN YENİLER</h1>
			<p>Tutkuların ayak sesi...</p>
		</div>
	</div>
<hr>
</div>
    
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

<!-- Page Content -->
<div class="container">
	<div class="row">
		<div class="col-lg-12">
		<h1>MODAYI TARZINLA YORUMLA</h1>
		<p>Modalar değişir, akımlar gelir geçer, bir sene son derece gösterişli kıyafetler ve parlak renkler ön plana çıkarken, ertesi sene bir bakarsınız pastel renkler hüküm sürmeye başlamış. Moda tüm insanların, en çok da kadınların kendini iyi hissetmesi için var. Hayatımızdan gelip geçen her akım bize kendini yaşatır ve giyim zevkimize, estetik anlatışımıza yeni değerler ekler. Her yeni moda, estetik anlayışımızı geliştiren bir fırsattır aslında. Ve biz zaman içinde kendi zevkimizi oluşturur, kendi modamızı yaratırız. Yakınlarımız ‘‘Bu tam senin tarzın,’’ diyerek bazıkıyafetleri veya aksesuarları bize işaret ettiklerinde biliriz ki artık modaya dair seçimlerimiz çevremizde gözlemlenebilir bir fark yaratmıştır.
					Ayakkabı, kuşkusuz ki tarzımızı oluşturmak için en önemli silahımız. Marilyn Monroe der ki ‘‘Bir kadına doğru ayakkabıları verirseniz, bütün dünyayı fethedebilir.’’ Kadın ayakkabısıhayatımızda sadece görsel bir hoşluk, estetik bir fonksiyon olmanın çok daha ötesinde bir işleve sahip. Kadın ayakkabısı ile tüm dünyaya meydan okuyabilir. Güzel, kaliteli, göz alıcı bir kadın ayakkabısı sadece bir sanat eseri değil, aynı zamanda kadının özgüvenini perçinleyen güçlü bir enerjidir. Bu enerjiden doğru yararlanmak için kişinin ilk önce kendini tanıması, gelip geçen akımlardan hangisini hayatına dahil edeceğini, edecekse bu tarzları nasıl yorumlayacağını bilmesi gerekir. Doğru kombinlenmiş bir kadın ayakkabısı çok sıradan bir kıyafeti dahi karizmatik hale getirebilir. Tabi ki olay sadece ayakkabıseçimi ile bitmiyor. Çantamız ve kullanacağımız diğer aksesuarların da yaratacağımız görüntüyü bütünlemesi gerekiyor.
					Kadınlarda ayakkabı bu kadar hayati bir öneme sahipken, erkeklerde durum değişik mi? Hayır, hiç sanmıyoruz. Her ne kadar genel modaya dair konularda kadınlar her zaman daha fazla göz önünde olsa da, ayakkabı erkekler için belki kadınlardan bile daha hayati öneme sahip. Kabul edelim ki erkek modası bayanların modası ile kıyaslandığında çok daha statik ve seçenek olarak çok daha kısıtlı. Örneğin belli renklerin, desenlerin kullanımı erkekler söz konusu bile değil. Toplumsal kodlar erkekleri giyim konusunda biraz daha ölçülü olmaya, klasiğe yakın durmaya teşvik ederken, erkek ayakkabısının niteliği çok daha fazla önem kazanıyor. Giyimlerinde farklılaşma olanakları kısıtlı olan baylar, ayakkabı seçimleri ile klaslarını ortaya koyma imkanı bulabiliyor.
					Hem kadınlar hem erkekler için en önemlisi kendi tarzını oluşturmak ve yansıtmak. Başınıza gelmiştir, bazen aynı ayakkabıyı bir kişi giydiğinde hiç özel bulmazken, başka biri kullandığında çok hoş olduğunu düşünebiliriz. Sizce giydiklerini kendilerine yakıştıran ve dikkat çekici bir görünüm elde edenlerin ortak noktası nedir? Her şeyden önce, bu kişiler doğru yerde doğru ayakkabıyı ve aksesuarı kullanıyorlar. Casual bir kıyafetin altına çok abiye bir ayakkabı giymek veya tasarım ve renk olarak çok iddialı bir kıyafetin altına detayı fazla bir ayakkabı giymek gibi hatalarda bulunmuyorlar. Temel kural, kıyafetiniz ve ayakkabınız arasında bir denge olmasıdır. Eğer ki kıyafetiniz sade ise aksesuar seçimlerinizde daha iddialı parçalar kullanabilirsiniz. Tam tersi, gösterişli bir kıyafeti daha klasik, düz bir ayakkabı modeli ile tamamlayarak bir denge oluşturabilirsiniz. İ ster casual dediğimiz günlük giyimde olsun, ister abiye tarzda olsun önemli olan görünümünüzün kendi içinde denge sağlaması ve gideceğiniz ortama uyumlu olmasıdır.
					Tarz yaratmakta bir diğer önemli nokta kalitedir. İ yi görünmenin püf noktasıseçilen parçaların kalitesidir dersek abartmış olmayız. Örneğin iyi bir deri ayakkabı, dokusuyla, duruşu ile, kesimi tasarımı yansıtmasıyla görünümünüze büyük bir katkı yapacaktır. Derinin tarz yaratmakta sağladığı en önemli avantajlarından biri hem casual giyime, hem abiye giyime uyum sağlayabilmesidir. Kaliteli bir deri ayakkabı size sınırsız kombin seçeneği yaratma fırsatı sunar, yaratıcılığınız için geçerli bir baz oluşturur. Yazının başında da bahsettiğimiz gibi, akımlar gelir geçer ama deri zamansız bir moda gerçeğidir.
					Kalite dendiğinde, özellikle ayakkabı, çanta ve diğer aksesuarlar söz konusunda olduğunda akla ilk gelen kriter fiyattır. Fakat kalite ile fiyat arasındaki ilişki her zaman zihnimizdeki kalıplara uymayabilir. Kalitenin mutlaka bir bedeli vardır ve fiyat bu bedeli yansıtır. Fakat kaliteli bir parça için illa çok yüksek meblağlar ödemek zorunda değilsiniz. Günümüzde farklı özellikleri olan farklı üreticiler tüketicilere değişik fiyat aralıklarında seçenekler sunmaktadır. Alışverişe özen gösteren ve iyi araştıranlar, çok kaliteli parçaların çok avantajlı fiyatlarla satın alınabileceğinin bilincindedir. Bir ayakkabıya ne kadar ödemek istediğinize onu ne kadar uzun kullanmak istediğinize göre karar verebilirsiniz. Bazı klasik modeller vardır ki, uzun seneler kullanırız, bu tarz parçalara daha büyük yatırım yapabilirsiniz. Diğer yandan, bazı modeller vardır ki çok hoşumuza gitse de belki sadece o sene, belli bir dönemde kullanacaksınızdır. Bu tip parçalar rutinimizin dışına çıkmak ve kendimize şımartmak için eşsiz birer fırsattır!
					Tarz yaratmada bir diğer kriter konfordur. Siz bakmayın ‘‘Moda acı çekmektir.’’diyenlere... Sürdürülebilir bir giyim tarzı, her şeyden önce sizin konforunuzu sağlamalı ve sağlığınıza olumsuz bir etki yapmamalıdır. Örneğin çok şık bir topuklu ayakkabıbeğenebilirsiniz ama üzerinde yarım saatten fazla yürüyemeyecekseniz bu parçayı satın almaya ne gerek var? Rahatlığınızdan ödün vererek giyeceğiniz bir ayakkabı sizi aslında şık da göstermeyecektir. Alımlı bir görünüme sahip olmak için yüksek topuklu ayakkabı giyen ama doğru dürüst yürüyemeyen bir kadının şık, tarz sahibi olduğunu düşünür müsünüz? Tam tersine, konforsuz ve rahatsız ayakkabılar sizi çok itici gösterebilir. Biz tabi ki tamamen casual giyinin, topuksuz modellerle yetinin, şıklığıikinci plana atın demiyoruz! Ayağınıza tam uyum sağlayacak, iyi malzemelerden yapılmış yüksek topuklu bir ayakkabı da çok rahat olabilir. Tam tersi, kalitesiz ve ayağınıza uyum sağlamayan bir babet hiç topuğu olmadığı halde sizi çok rahatsız edebilir.
					Moda bir heyecandır, kendini ifade etme yöntemidir. Doğru yaklaşımlar ve doğru seçimlerle kendinize özgü tarzı yaratmak hayatınızı zenginleştireceği gibi özgüveniniz üzerinde de olumlu etkileri olacaktır.</p>
		</div>
	</div>
<hr>
</div>

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

<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- Script to Activate the Carousel -->
<script>
$('.carousel').carousel({
	interval: 1500 //changes the speed
})
</script>

</body>
</html>