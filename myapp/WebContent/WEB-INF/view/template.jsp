<%-- myapp/WebContent/WEB-INF/view/template.jsp --%>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>JSTL template</title>
</head>
<body>
<h2>JSTL template</h2>
<p>Sum: <strong>${sum}</strong></p>
<ul>
	<c:forEach var="item" items="${range}">
		<li>${item}</li>
	</c:forEach>
</ul>
</body>
</html>
