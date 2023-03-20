<%@ page contentType="text/html; charset=EUC-KR" %>
<%
	String message = "오류가 발생하여 회원가입 화면으로 돌아갑니다.";

	request.setCharacterEncoding("EUC-KR");
	request.setAttribute("message", message);
	response.setStatus(400);
	response.setHeader("Cache-Control", "no-store");
%>
<html>
<head>
<title>회원가입 확인</title>
<script>
	alert("${message}"); // request 스코프의 오류 메시지
	history.go(-2); // memberProc를 건너 뛰고 member-validate로 돌아가기
</script>
</head>
</html>
