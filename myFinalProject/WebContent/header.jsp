<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("UTF-8"); response.setCharacterEncoding("UTF-8"); %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>AYAKKABIM</title>

	<link href="css/css1/bootstrap.min.css" rel="stylesheet" />
	<link href="css/css1/flexslider.css" rel="stylesheet" media="screen" />	
	<link href="css/css1/cubeportfolio.min.css" rel="stylesheet" />
	<link href="css/css1/style.css" rel="stylesheet" />
	<link id="t-colors" href="css/css1/default.css" rel="stylesheet" />

</head>

<body>

<header>
<!-- start header -->	
<div class="navbar navbar-default navbar-static-top">
	<div class="container">
		<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/myFinalProject/homepage">AYAKKABIM</a>
		</div>
		<div class="navbar-collapse collapse ">
			<ul class="nav navbar-nav">
				<li class="dropdown">
				<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">KADIN<i class="fa fa-angle-down"></i></a>
				<ul class="dropdown-menu">
					<li><a href="/myFinalProject/bayangunluk">Günlük</a></li>
					<li><a href="/myFinalProject/bayanspor">Spor</a></li>
					<li><a href="/myFinalProject/bayantopuklu">Topuklu</a></li>
					<li><a href="/myFinalProject/bayansandalet">Sandalet</a></li>
					<li><a href="/myFinalProject/bayanbot">Bot</a></li>
	 			</ul>				
				</li>
				<li class="dropdown">
				<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">ERKEK<i class="fa fa-angle-down"></i></a>
                	<ul class="dropdown-menu">
                    	<li><a href="/myFinalProject/baygunluk">Günlük</a></li>
                        <li><a href="/myFinalProject/bayspor">Spor</a></li>
                        <li><a href="/myFinalProject/bayklasik">Klasik</a></li>
                        <li><a href="/myFinalProject/bayterlik">Terlik</a></li>
                        <li><a href="/myFinalProject/baybot">Bot</a></li>	
                    </ul>				
				</li>
                <li class="dropdown">
                <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">AKSESUAR<i class="fa fa-angle-down"></i></a>
                	<ul class="dropdown-menu">
						<li class="dropdown-submenu">
						<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">KADIN</a>
							<ul class="dropdown-menu">
								<li><a href="/myFinalProject/bayancuzdan">Cüzdan & Kartlık</a></li>
								<li><a href="/myFinalProject/bayanbileklik">Bileklik</a></li>
							</ul>
						</li>
						<li class="dropdown-submenu">
						<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown">ERKEK</a>
						<ul class="dropdown-menu">
							<li><a href="/myFinalProject/baycuzdan">Cüzdan & Kartlık</a></li>
							<li><a href="/myFinalProject/baykemer">Kemer</a></li>
						</ul>
						</li>
             		</ul>
                   	</li>
                    <li><a href="/myFinalProject/Sepetlistele">SEPETİM</a></li>                       
                    <c:choose>
                    <c:when test="${pageContext.request.userPrincipal != null}">
                    	<li class="dropdown">
		                <a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Hoşgeldiniz, <c:out value="${pageContext.request.userPrincipal.name}" /><i class="fa fa-angle-down"></i></a>
							<ul class="dropdown-menu">
		                    	<li><a href="cikis.jsp">Çıkış Yap</a></li>
		                    </ul>
	                    </li>
                    </c:when>
                    <c:otherwise>
		            <li class="dropdown">
		            <a href="#" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Giriş Yap<i class="fa fa-angle-down"></i></a>
						<ul class="dropdown-menu">
		                	<li><a href="girisyap1.jsp">Giriş Yap</a></li>
		                    <li><a href="kaydol.jsp">Kaydol</a></li>
		                </ul>
					</li>
                    </c:otherwise>
                    </c:choose>
			</ul>
		</div>
	</div>
</div>
</header>
<!-- end header -->

</body>
</html>