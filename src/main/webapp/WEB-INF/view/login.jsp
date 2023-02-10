<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<title>Insert title here</title>
<script  src="https://www.google.com/recaptcha/api.js"></script>
</head>
<body style="background-color: grey">




	<div class="cotainer p-2">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card"
					style="background-color: #eee; margin-right: -20px; margin-left: 20px; margin-top: 100px">
					<div class="card-body">
						<div style="align-self: center; margin-left: 40px;">
							<h1 style=" margin-left: 40px"><b>Welcome To Login
								Page</b></h1>

							<div class="form-group">
								<form action="${pageContext.request.contextPath}/login"
									modelAttribute="login" autocomplete="off" method="POST">
									<div style="margin-left: -20px">
										<label for="userId" style="color: blue"><b
											style="font-size: 1.4em; font-family: italic; margin-bottom: 20px">ENTER
												USER-ID</b></label> <input type="text" class="form-control"
											name="userId" id="userId" value=""
											placeholder="enter user-id" /> <br>
									</div>
									<div style="margin-left: -20px">
										<label for="password" style="color: blue"><b
											style="font-size: 1.4em; font-family: italic; margin-bottom: 20px">ENTER
												PASSWORD</b></label> <input type="password" name="password"
											class="form-control" id="password" value=""
											placeholder="enter password" />
									</div>
									<div style="margin-bottom: 20px;margin-top: 20px; margin-left: 75px">
										<button type="submit"
											style="padding-right: 190px; padding-left: 190px; padding-bottom: 10px; padding-top: 10px; margin-right: 20px"
											name="button" value="login"
											class="btn btn-primary btn-lg btn-block">Login</button>

									</div>
									<div style="margin-left: 45px">

										<button type="submit" class="btn btn-primary btn-lg btn-block"
											style="padding-right: 200px; padding-left: 170px; padding-bottom: 10px; padding-top: 10px; margin-left: 30px"
											name="button" value="back">Logout</button>
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