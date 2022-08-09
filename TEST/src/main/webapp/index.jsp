<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<% String contextPath = request.getContextPath() + "/"; %>
	<head>
		<meta charset="ISO-8859-1">
		<title>Payara 5 Authentication Test</title>
		<script>
			const contextPath = <%=contextPath%>;
			localStorage.contextPath = contextPath;
			document.onload = window.open(contextPath + "home.html", "_self");
		</script>
	</head>
	<body></body>
</html>