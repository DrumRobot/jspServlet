<%@ page contentType="text/html; charset=EUC-KR"%>
<html>
<head>
<jsp:useBean id="mMgr" class="ch14.MemberMgr" />
<%
request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	boolean result = mMgr.checkId(id);
%>
<title>ID �ߺ�üũ</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
	<div align="center">
		<br /> <b><%=id%></b>
		<%
			if (result) {
				out.println("�� �̹� �����Ѵ� ID�Դϴ�.<p>");
			} else {
				out.println("�� ��� ���� �մϴ�.<p>");
			}
		%>
		<a href="#" onClick="self.close()">�ݱ�</a>
	</div>
</body>
</html>