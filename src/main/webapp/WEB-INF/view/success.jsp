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
					style="background-color: #eee; margin-right: 100px; margin-left: 90px; margin-top: 50px;">
					<div class="card-body">
						<div
							style="align-self: center; margin-left: 30px; margin-right: 50px">
							<h1  style="font-size: 2.5em;margin-left: 65px"><b>WELCOME
								${userInfo.userId}</b></h1>
							<div>
								<form action="${pageContext.request.contextPath}/reglog"
									modelAttribute="reglog" autocomplete="off" method="POST">
									<span><b style="font-size: 1.6em; font-family: italic">USERID
											&nbsp;:</b>&nbsp;&nbsp;&nbsp;${userInfo.userId}</span><br> <span><b
										style="font-size: 1.6em; font-family: italic">NAME
											&nbsp;&nbsp;&nbsp;&nbsp;:</b>&nbsp;&nbsp;&nbsp;${userInfo.name}</span><br>

									<span><b style="font-size: 1.6em; font-family: italic">EMAIL
											&nbsp;&nbsp;&nbsp;:</b>&nbsp;&nbsp;&nbsp;${userInfo.email}</span><br>
									<span><b style="font-size: 1.6em; font-family: italic">PHONE
											&nbsp;&nbsp;:</b>&nbsp;&nbsp;&nbsp;${userInfo.phoneNo}</span><br> <span><b
										style="font-size: 1.6em; font-family: italic">STATUS
											&nbsp;:</b>&nbsp;&nbsp;&nbsp;${userInfo.status}</span>

									<div style="margin-top: 10px; margin-left: 75px">
										<button type="submit"
											style="padding-right: 150px; padding-left: 150px; padding-bottom: 10px; padding-top: 10px; margin-right: 10px"
											name="button" value="login"
											class="btn btn-primary btn-lg btn-block">Login</button>


									</div>
									<div style="margin-top: 10px; margin-left: 75px">


										<button type="submit"
											style="padding-right: 150px; padding-left: 138px; padding-bottom: 10px; padding-top: 10px; margin-right: 10px"
											name="button" value="home"
											class="btn btn-primary btn-lg btn-block">Logout</button>
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
