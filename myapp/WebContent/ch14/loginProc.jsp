<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mMgr" class="ch14.MemberMgr"/>
<%
	  request.setCharacterEncoding("euc-kr");
	  String id = request.getParameter("id");
	  String pass = request.getParameter("pass");
	  String url = "login.jsp";
	  String msg = "�α��ο� ���� �Ͽ����ϴ�.";
	  
	  boolean result = mMgr.loginMember(id,pass);
	  if(result){
	    session.setAttribute("idKey",id);
	    msg = "�α��ο� ���� �Ͽ����ϴ�.";
	  }
%>
<script>
	alert("<%=msg%>");	
	location.href="<%=url%>";
</script>