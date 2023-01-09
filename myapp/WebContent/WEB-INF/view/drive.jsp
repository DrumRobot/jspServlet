<%-- myapp/WebContent/WEB-INF/view/drive.jsp --%>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Drive</title>
</head>
<body>
<form method="post" enctype="multipart/form-data">
	<input type="file" name="file" />
	<button type="submit">Upload</button>
</form>
<ul>
	<c:forEach var="item" items="${fileList}">
	<li>
		<a href="downloadServlet/${item}">${item}</a>
	</li>
	</c:forEach>
</ul>
</body>
</html>
