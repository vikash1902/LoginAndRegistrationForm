<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: grey">

	<DIV CLASS="COTAINER P-2" style="margin-top: 150px">
		<DIV CLASS="ROW">
			<DIV CLASS="COL-MD-6 OFFSET-MD-3">
				<DIV CLASS="CARD"
					STYLE="BACKGROUND-COLOR: #EEE; MARGIN-RIGHT: 355PX; MARGIN-LEFT: 290PX; margin-top: 200px;">
					<DIV CLASS="CARD-BODY">
						<div
							style="align-self: center; margin-left: 55px; margin-top: 150px;">
							<h1 style="color: red">
								<b
									style="font-size: 1.07em; font-family: italic; margin-left: -18px; margin-bottom: 50px; margin-top: 50px">WELCOME
									TO LOGIN-REGISTRATION </b>
							</h1>
							<div>
								<form action="${pageContext.request.contextPath}/reglog"
									modelAttribute="reglog" autocomplete="off" method="POST">

									<div style="margin-top: 30px; margin-left: 75px">
										<button type="submit"
											style="padding-right: 300px; padding-left: 250px; padding-bottom: 10px; padding-top: 10px; margin-right: 10px; text-align: center"
											name="button" value="registration"
											class="btn btn-primary btn-lg btn-block">Registration</button>


									</div>
									<div style="margin-top: 30px; margin-left: 75px">

										<button type="submit"
											style="padding-right: 300px; padding-left: 310px; padding-bottom: 10px; padding-top: 10px; margin-bottom: 20px; margin-right: 10px; text-align: center"
											name="button" value="login"
											class="btn btn-primary btn-lg btn-block">Login</button>
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
</html>