<%@ page contentType="text/html; charset=EUC-KR"%>
<jsp:useBean id="mMgr" class="ch14.MemberMgr"/>
<%
	  request.setCharacterEncoding("euc-kr");
	  String id = request.getParameter("id");
	  String pass = request.getParameter("pass");
	  String url = "login.jsp";
	  String msg = "로그인에 실패 하였습니다.";
	  
	  boolean result = mMgr.loginMember(id,pass);
	  if(result){
	    session.setAttribute("idKey",id);
	    msg = "로그인에 성공 하였습니다.";
	  }
%>
<script>
	alert("<%=msg%>");	
	location.href="<%=url%>";
</script>