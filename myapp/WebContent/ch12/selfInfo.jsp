<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.util.*, ch11.*"%>
<jsp:useBean id="regMgr" class="ch11.RegisterMgr"/>
<html>
<head>
<title>JSP���� �����ͺ��̽� ����</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFCC">
<jsp:include page="sessionLoginOK.jsp"/>
<h2>Bean�� ����� �����ͺ��̽� ���� ����</h2><br/>
<h3>ȸ������</h3>
<table bordercolor="#0000ff" border="1">
<tr>
   <td><strong>ID</strong></td>
   <td><strong>PASSWD</strong></td>
   <td><strong>NAME</strong></td>
   <td><strong>NUM1</strong></td>
   <td><strong>NUM2</strong></td>
   <td><strong>EMAIL</strong></td>
   <td><strong>PHONE</strong></td>
   <td><strong>ZIPCODE/ADDRESS</strong></td>
   <td><strong>JOB</strong></td>	
</tr>
<%
	String id = (String)session.getAttribute("idKey");
    Vector<RegisterBean> vlist = regMgr.getRegisterList();
	for (RegisterBean regBean: vlist){ // foreach��
   		if (!regBean.getId().equals(id)) continue;
%>
<tr>
	<td><%=regBean.getId()%></td>
	<td><%=regBean.getPwd()%></td>
	<td><%=regBean.getName()%></td>
	<td><%=regBean.getNum1()%></td>
	<td><%=regBean.getNum2()%></td>
	<td><%=regBean.getEmail()%></td>
	<td><%=regBean.getPhone()%></td>
	<td><%=regBean.getZipcode()%>/<%=regBean.getAddress()%></td>
	<td><%=regBean.getJob()%></td>
</tr>
<%}%>
</table>
</body>
</html>