<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body style="background-color: grey">
	<div class="cotainer p-2">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card"
					style="background-color: #eee; margin-right: 100px; margin-left: 90px; margin-top: 175px;">
					<div class="card-body">
						<div
							style="align-self: center; margin-left: 30px; margin-right: 50px">
							<h1 style="font-size: 2.5em; margin-left: 85px"><b>WELCOME
								${userinfo.userId}</b></h1>
							<div>
								<form action="${pageContext.request.contextPath}/logout"
									modelAttribute="user" autocomplete="off" method="POST">
									<span><b style="font-size: 1.6em; font-family: italic">USERID
											&nbsp;&nbsp;:</b>&nbsp;&nbsp;&nbsp;${userinfo.userId}</span><br> <span><b
										style="font-size: 1.6em; font-family: italic">NAME
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b>&nbsp;&nbsp;&nbsp;${userinfo.name}</span><br>

									<span><b style="font-size: 1.6em; font-family: italic">STATUS
											&nbsp;&nbsp;:</b>&nbsp;&nbsp;&nbsp;${userinfo.status}</span>

									<div style="margin-top: 10px; margin-left: 55px">
										<button type="submit"
											style="padding-right: 150px; padding-left: 150px; padding-bottom: 10px; padding-top: 10px; margin-right: 10px"
											name="button" value="logout"
											class="btn btn-primary btn-lg btn-block">LOGOUT</button>


									</div>


								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
