<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head></head>
	<title>Error Page</title>
	<%String contextPath = request.getContextPath() + "/";%>
	<body>
		<div class="text-center">
			<p>You landed here because something went wrong while \
				processing your request.</p>
			<p>In case you were trying to login, please verify your \
			credentials before trying again</p>
			<a href="<%=contextPath%>index.jsp">Go to Login Page</a><br>
			<a href="javascript:history.back(-1);">Go Back to Previous Page</a>
		</div>
	</body>
</html>