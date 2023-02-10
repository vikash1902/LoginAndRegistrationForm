<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"
	type="text/javascript"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/datatable/jquery.dataTables.min.css">
<script
	src="${pageContext.request.contextPath}/resources/js/datatable/jquery.dataTables.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: grey;">

	<DIV CLASS="COTAINER P-2">
		<DIV CLASS="ROW">
			<DIV CLASS="COL-MD-6 OFFSET-MD-3">
				<DIV CLASS="CARD"
					STYLE="BACKGROUND-COLOR: #EEE; width: 60%; height: 40%; MARGIN-RIGHT: 450PX; MARGIN-LEFT: 300PX; padding-top: 10px; margin-top: 50px; padding-bottom: 10px">
					<DIV CLASS="CARD-BODY">
						<div
							style="align-self: center; width: 85%; margin-left: 70px; margin-right: 220px">
							<h1 style="font-size: 2.5em;text-align: center"><b>WELCOME - ${user.userID}</b></h1>
							<div>
								<form action="${pageContext.request.contextPath}/delete"
									modelAttribute="delete" autocomplete="off" method="POST">
									<table class="cell-border display compact" border="1"
										id="filerfno" style="margin-top: 50px">
										<thead>
											<tr>
												<th width="150" height="30" valign="top"
													class="textBoxDisplay">User Id</th>
												<th width="150" height="30" valign="top"
													class="textBoxDisplay">Name</th>
												<th width="150" height="30" valign="top"
													class="textBoxDisplay">Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="cstatEnquiry" items="${userData}">
												<tr>
													<td>${cstatEnquiry.userId}</td>
													<td>${cstatEnquiry.name}</td>
													<td><button type="submit" name="id"
															style="align-self: center;margin-left: 68px"
															class="btn btn-primary btn-default btn-block"
															value='${cstatEnquiry.id}'>Delete</button></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<div Style="align-content: center">
										<button type="submit" class="btn btn-primary btn-lg btn-block"
											style="padding-right: 200px; padding-left: 190px;  margin-left: 130px"
											name="button" value="logout">Logout</button>
									</div>

								</form>
							</div>
						</div>
					</DIV>
				</DIV>
			</DIV>
		</DIV>
	</DIV>
</body>
<script type="text/javascript">
	$(document).ready(
			function() {
				$('#filerfno').DataTable(
						{
							lengthMenu : [ [ 10, 25, 50, 100, -1 ],
									[ 10, 25, 50, 100, "All" ] ],
							paging : true,
							searching : false,
							bLengthChange : true,
							bPaginate : false,
							bInfo : true,
							ordering : false,
						});
			});
</script>
</html>