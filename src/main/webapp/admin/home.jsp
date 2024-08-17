<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ page contentType="text/html; charset=UTF-8"%>
<title>Admin:Home</title>
<style>
.card-title:hover {
	cursor: pointer;
}
</style>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%@include file="navbar.jsp"%>


	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_books.jsp">

					<div class="card">

						<div class="card-body text-center">
							<i class="fas fa-plus-square fa-3x text-primary"></i> <br>
							<h4>Thêm sách</h4>
							-----------
						</div>

					</div>


				</a>
			</div>

			<div class="col-md-3">
				<a href="all_books.jsp">

					<div class="card">

						<div class="card-body text-center">
							<i class="fas fa-box-open fa-3x text-danger"></i> <br>
							<h4>Tất cả các sách</h4>
							-----------
						</div>

					</div>


				</a>
			</div>
			
			<div class="col-md-3">
				<a href="../login.jsp">

					<div class="card">

						<div class="card-body text-center">
							<i class="fas fa-sign-out fa-3x text-primary"></i> <br>
							<h4>Đăng Xuất</h4>
							-----------
						</div>

					</div>


				</a>
			</div>
		</div>

	</div>





	<div style="margin-top: 260px">
		<%@include file="footer.jsp"%></div>
</body>
</html>