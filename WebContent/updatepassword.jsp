<%@include file="db.jsp" %>
<%@page errorPage="errorpage.jsp" %>
<%
	String id=(String)session.getAttribute("id");
	String password=request.getParameter("password");
	
	
%>
	<jsp:forward page="changepassword.jsp"></jsp:forward>
<%
	con.close();
%>