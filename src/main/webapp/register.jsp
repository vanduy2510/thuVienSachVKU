<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-885	9-1">
<title>Đăng ký</title>
<%@include file="all_component/allCss.jsp"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<style type="text/css">
</style>

</head>
<body style="background-color: #f0f1f2;">

	<%@include file="all_component//navbar.jsp"%>



	<!--start navbar  -->

	<!--end navbar  -->


	<!--form start  -->


	<div class="container-fluid">

		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">

					<div class="card-header bg-primary">
						<h4 class="text-center text-white">Form Đăng ký</h4>


						<c:if test="${not empty succMsg }">

							<p class="text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />

						</c:if>

						<c:if test="${not empty failedMsg }">

							<p class="text-center text-danger">${failedMsg}</p>
							<c:remove var="failedMsg" scope="session" />

						</c:if>

					</div>
					<div class="card-body">

						<form action="register" method="post">


							<div class="form-group">
								<label for="exampleInputEmail1">Họ và tên</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Họ và tên"
									required="required" name="fname">

							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Email</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Nhập email"
									required="required" name="email">

							</div>



							<div class="form-group">
								<label for="exampleInputEmail1">SĐT</label> <input type="number"
									class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Nhập số điện thoại"
									required=required name="phno">

							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Mật khẩu</label> <input
									type="password" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Nhập mật khẩu"
									required=required name="password">

							</div>

							<div class="form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Đồng ý với các điều khoản</label>
							</div>

							<button type="submit" class="btn btn-primary">Submit</button>






							<!--
							<div class="form-group">
								<label for="exampleInputEmail1">Địa chỉ</label> <textarea rows="5" cols="" class="form-control">
								
								
								</textarea>

							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="exampleRadios" id="exampleRadios1" value="option1"
									checked> <label class="form-check-label"
									for="exampleRadios1"> Nam </label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="radio"
									name="exampleRadios" id="exampleRadios2" value="option2">
								<label class="form-check-label" for="exampleRadios2"> Nữ</label>
							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password">
							</div>

							<button type="submit" class="btn btn-primary">Submit</button>

							 -->

						</form>

					</div>
				</div>

			</div>
		</div>
	</div>

	<!--form end  -->



	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>


<div style="margin-top: 130px">
<%@include file="all_component/footer.jsp" %>
</div>
</body>

</html>