<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cıkış</title>
</head>
<body>
	<%
		//bunlara gerek yok, session invalide etmen yeterli.
		//session.removeAttribute("email");
		// session.removeAttribute("password");

		session.invalidate();

		response.sendRedirect(request.getContextPath());
		//context path vermelisin, hardcode stringler yazmamaya calis.
		//security constaritten dolayı tekrar logine yonlendirir.
	%>
</body>
</html>