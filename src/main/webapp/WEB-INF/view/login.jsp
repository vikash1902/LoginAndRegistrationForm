<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<title>Insert title here</title>
<script src="https://www.google.com/recaptcha/api.js"></script>
</head>
<body style="background-color: grey">




	<div class="cotainer p-2">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card"
					style="background-color: #eee; margin-right: -20px; margin-left: 20px; margin-top: 100px">
					<div class="card-body">
						<div style="align-self: center; margin-left: 40px;">
							<h1 style="margin-left: 40px">
								<b>Welcome To Login Page</b>
							</h1>
							<c:if test="${message ne null}">
								<div style="margin-left: 200px">
									<b style="color: red; font-size: 2.5em text-align: center">${message}</b>
								</div>
							</c:if>

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
									<div class="g-recaptcha col-sm-5"
										data-sitekey="6LeyfG8kAAAAAMMpInXO6mtsSlQzF9wd1JZ9qbA2"
										style="margin-top: 10px"></div>
									<span id="captchaError" class="alert alert-danger col-sm-4"
										style="display: none"></span>
									<div s
										style="margin-bottom: 20px; margin-top: 20px; margin-right: 90px">
										<button type="submit"
											style="padding-right: 100px; padding-left: 120px; padding-bottom: 10px; padding-top: 10px"
											name="button" value="login"
											class="btn btn-primary btn-lg btn-block">Login</button>

										<button type="submit" class="btn btn-primary btn-lg btn-block"
											style="padding-right: 120px; padding-left: 80px; padding-bottom: 10px; padding-top: 10px; margin-left: 45px"
											name="button" value="back">Back</button>
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