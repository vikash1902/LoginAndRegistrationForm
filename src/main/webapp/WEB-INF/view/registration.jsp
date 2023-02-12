<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
	
	<script src="https://ajax.goolepis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body style="background-color: grey;">

	<DIV CLASS="COTAINER P-2">
		<DIV CLASS="ROW">
			<DIV CLASS="COL-MD-6 OFFSET-MD-3">
				<DIV CLASS="CARD"
					STYLE="BACKGROUND-COLOR: #EEE; MARGIN-RIGHT: 490PX; MARGIN-LEFT: 500PX; margin-top: 10px; margin-bottom: 100px">
					<DIV CLASS="CARD-BODY">
						<div
							style="align-self: center; margin-left: 30px; margin-right: 50px">
							<h1>
								<b style="font-size: 0.8em; font-family: italic">Welcome To
									Registration Page</b>
							</h1>
							<div class="form-group" style="padding-bottom: 10px">
								<form action="${pageContext.request.contextPath}/registration"
									modelAttribute="registration" autocomplete="off" method="POSt">
									<div class="form-group">
										<label for="name" style="color: blue"><b
											style="font-size: 1.0em; font-family: italic">ENTER NAME</b></label>
										<br> <input type="text" class="form-control" name="name"
											id="name" placeholder="enter name" maxlength="50">
									</div>
									<br>
									<div class="form-group">
										<label for="userId" style="color: blue;"><b
											style="font-size: 1.0em; font-family: italic">ENTER
												USERID</b></label> <br> <input type="text" class="form-control"
											name="userId" id="userId" placeholder="enter userid"
											maxlength="20">
									</div>
									<br>

									<div class="form-group">
										<label for="password" style="color: blue"><b
											style="font-size: 1.0em; font-family: italic">ENTER
												PASSWORD</b></label><br> <input type="password"
											class="form-control" name="password" id="password"
											placeholder="enter password" maxlength="50">
									</div>
									<br>
									<div class="form-group">
										<label for="repassword" style="color: blue"><b
											style="font-size: 1.0em; font-family: italic">RE-ENTER
												PASSWORD</b></label><br> <input type="password"
											class="form-control" name="rePassword" id="repassword"
											placeholder="Re-enter password" maxlength="50">

									</div>

									<br>
									<div class="form-group">
										<label for="mail" style="color: blue"><b
											style="font-size: 1.0em; font-family: italic">ENTER EMAIL</b></label><br>
										<input type="email" name="email" class="form-control"
											id="mail" placeholder="enter email" maxlength="100">
									</div>
									<br>
									<div class="form-group">
										<label for="phone" style="color: blue"><b
											style="font-size: 1.0em; font-family: italic">ENTER PHONE</b>
										</label> <br> <input type="text" class="form-control"
											name="phoneNo" id="phone" placeholder="ENTER YOUR NUMBER"
											maxlength="10">
									</div>
									<br>

									<div>
										<h2></h2>
										<label>Photos: </label> <input type="file" name="image"
											accept="image/png, image/jpeg" />

									</div>
									<br>
									<div style="margin-top: 10px; margin-left: 75px">
										<button type="submit"
											style="padding-right: 25px; padding-left: 25px; padding-bottom: 10px; padding-top: 10px; margin-right: 10px"
											name="button" value="Register"
											class="btn btn-primary btn-lg btn-block">Register</button>

										<button type="submit"
											style="padding-right: 40px; padding-left: 40px; padding-bottom: 10px; padding-top: 10px; margin-right: 10px"
											class="btn btn-primary btn-lg btn-block" name="button"
											value="logout">Back</button>
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

