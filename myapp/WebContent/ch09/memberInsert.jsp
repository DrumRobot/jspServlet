<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	String message = "������ �߻��Ͽ� ȸ������ ȭ������ ���ư��ϴ�.";

	request.setCharacterEncoding("EUC-KR");
	request.setAttribute("message", message);
	response.setStatus(400);
	response.setHeader("Cache-Control", "no-store");
%>
<html>
<head>
<title>ȸ������ Ȯ��</title>
<script>
	alert("${message}"); // request �������� ���� �޽���
	history.go(-2); // memberProc�� �ǳ� �ٰ� member-validate�� ���ư���
</script>
</head>
</html>
