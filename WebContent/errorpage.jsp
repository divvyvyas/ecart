<%@page isErrorPage="true" %>
<script src="sweetalert2.min.js"></script>
<script>
	alert("Something Went Wrong..!!"+"<%=exception %>");
	history.back();
</script>