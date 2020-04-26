<%@page errorPage="errorpage.jsp" %>
<%@include file="db.jsp" %>
<%@include file="ls.jsp" %>
<%
	String id=request.getParameter("id");
	String password=request.getParameter("pass");
			
	if(id.equals("admin")&&password.equals("12345"))
	{
		response.sendRedirect("OperateServlet1?operate=Admin");
	}
	else
	{
		String qr="select * from user where id=? and password=?";
		PreparedStatement ps=con.prepareStatement(qr);
		ps.setString(1, id);
		ps.setString(2, password);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			session.setAttribute("id", id);
			response.sendRedirect("uhome.jsp");
		}
		else
		{
%>
			<script src="sweetalert2.min.js"></script>
			<script>
			swal({
				type: 'error',
				title: 'Oops...',
				text: 'Something went wrong!',
				footer: '<a href>Why do I have this issue?</a>',
				toast: true,
				position: 'top-end',
				showConfirmButton: false,
				timer: 3000
			});
				//history.back();
			</script>
<%
			
			
		}
	}
%>