<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
		pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<%String contextPath = request.getContextPath() + "/";
	request.setAttribute("contextPath", contextPath); %>
<title>Logout Page</title>
<body>
<%session.setMaxInactiveInterval(0);%>
</body>
<script>
	function logout(){
		basePath = <%=contextPath%>;
		window.open(basePath+"index.jsp", "_self");
	};
	document.onload = logout();
</script>
</html>