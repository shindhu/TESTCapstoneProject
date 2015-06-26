<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Users</title>
<%@ include file="/WEB-INF/common-css-javascript.html"%>

</head>
<body id="body_layout">
	
	<c:import url="/WEB-INF/navbar.jsp" />
	<%-- <c:out value="${ user}"> </c:out> --%>
	
	<div class="table-responsive" id="outerbody"  >
	<table class="table table-hover" style="width:40%">
		<tr>
			 <th style="width:10%">ID</th> 
			<th style="width:10%; text-align: left">Users</th>
			<th style="width:15%">Email</th>
			<th style="width: 10%">UserBooks</th>
			
		</tr>
		
		 <c:forEach items="${user }" var="theUser">
			<tr>	
				<td>${theUser.id }</td>
				<td style="text-align: left">${theUser.username}</td>
				<td style="text-align: left">
					<a href="mailto:mp.shindhu@gmail.com.com?Subject=Hello%20again" target="_top">${theUser.email }</a></td>
				<td><a class="btn btn-info btn-md" href="category?user_id=${theUser.id }">Books</a></td>
				
			</tr>
		</c:forEach> 
	</table>
	</div>
	
	<div>
	<%@ include file="/WEB-INF/footer.jsp" %>
	</div>

</body>
</html>