<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mMgr" class="ch14.MemberMgr"/>
<%
	  request.setCharacterEncoding("euc-kr");
	  String email = request.getParameter("email");
	  String pass = request.getParameter("pass");
	  String url = "login.jsp";
	  String msg = "�α��ο� ���� �Ͽ����ϴ�.";
	  
	  boolean result = mMgr.loginMember(email,pass);
	  if(result){
	    session.setAttribute("idKey", email);
	    msg = "�α��ο� ���� �Ͽ����ϴ�.";
	  }
%>
<script>
	alert("<%=msg%>");	
	location.href="<%=url%>";
</script>