<%@ page contentType="text/html; charset=EUC-KR" %>
<% 
		String id = (String)session.getAttribute("idKey");
		if(id == null){
%> 
<script>
	   alert("�α��� ���� �ʾҽ��ϴ�.");
	   location.href="sessionLogin.jsp";
</script>
<%}%>
<html>
<head>
<title>Simple LogIn</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#996600" topmargin="100">
<table width="75%" border="1" align="center" cellpadding="1" cellspacing="1" bordercolor="#660000" bgcolor="#FFFF99">
  <tr bordercolor="#FFFF99"> 
    <td height="190" colspan="7"> 
      <table width="50%" border="1" align="center" cellspacing="0" cellpadding="0">
        <tr bordercolor="#FFFF66"> 
          <td colspan="4"><div align="center">Log On Page</div></td>
        </tr>
        <tr >         
          <td><div align="center"> 
            <strong><%=id%></strong>
			���� �α��� �ϼ̽��ϴ�. 
          </div></td>
          <td align="center">
            <a href="usingJDBCBean.jsp" target="bottom">
              <strong>��ü ������ȸ</strong>
            </a>
          </td>
          <td align="center">
            <a href="selfInfo.jsp"><strong>���� ������ȸ</strong></a>
          </td>   
          <td align="center"> 
            <a href="sessionLogout.jsp"><strong>LOG OUT</strong></a>
          </td>
        </tr>
      </table>
     </td>
  </tr>
</table>
<iframe name="bottom" width="100%" frameborder=0 framespacing=0
	marginheight=0 marginwidth=0 scrolling=no vspace=0></iframe>
</body>
</html>