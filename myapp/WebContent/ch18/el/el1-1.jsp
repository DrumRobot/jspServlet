<%-- myapp/WebContent/ch18/el1-1.jsp --%>
<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	pageContext.setAttribute("siteName", "itmaster.co.kr");
	request.setAttribute("siteName", "JSPStudy.co.kr");
%>
<html>
<head>
<title>Expression Language</title>
</head>
<body>
<h2>EL�� �⺻����1</h2>
<p>����Ʈ�� : <strong>${siteName}</strong></p>
<p>request scope : <strong>${requestScope.siteName}</strong></p>
</body>
</html>
