<%@page errorPage="errorpage.jsp" %>
<%@include file="db.jsp" %>
<%
	String id=(String)session.getAttribute("id");
	String name=request.getParameter("name");
	String qr="select * from";
%>