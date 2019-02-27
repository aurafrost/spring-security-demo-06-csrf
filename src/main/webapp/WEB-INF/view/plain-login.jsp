<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Plain Login</title>
</head>
<body>
<h3>Custom Login Page</h3>
<c:if test="${param.logout!=null}">
<p>You've been logged out.</p>
</c:if>
<form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
	<c:if test="${param.error!=null}">
		<i style="color:red">Invalid username/password.</i>
	</c:if>
	<p>User Name: <input type="text" name="username"/></p>
	<p>Password: <input type="password" name="password"/></p>
	<input type="submit" value="Login"/>
	<!-- CSRF Manual inclusion -->
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>

</body>
</html>