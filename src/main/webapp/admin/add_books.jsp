<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-885	9-1">
<title>Admin: Thêm sách</title>
<%@include file="allCss.jsp"%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<style type="text/css">
</style>

</head>
<body style="background-color: #f0f1f2;">

	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Thêm sách</h4>


						<c:if test="${not empty succMsg }">
							<p class="text-center  text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg }">
							<p class="text-center  text-danger">${failedMsg}</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>


						<form action="../add_books" method="post"
							enctype="multipart/form-data">

							<div class="form-group">

								<label for="exampleInputEmail1">Tên sách*</label> <input
									name="bname" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>

							<div class="form-group">

								<label for="exampleInputEmail1">Tác giả*</label> <input
									name="author" type="text" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp">

							</div>


							<div class="form-group">

								<label for="exampleInputPassword1">Giá*</label> <input
									name="price" type="number" class="form-control"
									id="exampleInputPassword1" aria-describedby="emailHelp">

							</div>


							<div class="form-group">

								<label for="inputState">Loại sách</label> <select name="btype"
									class="form-control" id="inputState">
									<option selected>--Lựa chọn--</option>
									<option value="New">Sách Mới</option>

								</select>


							</div>

							<div class="form-group">

								<label for="exampleInputEmail1">Trạng thái sách</label> <select
									name="bstatus" class="form-control" id="inputState">
									<option selected>--Lựa chọn--</option>
									<option value="Active">Còn hàng</option>
									<option value="Inactive">Hết hàng</option>

								</select>

							</div>


							<div class="form-group">

								<label for="exampleFormControl1">Upload Ảnh</label> <input
									name="bimg" type="file" class="form-control-file"
									id="exampleFormControl1File1">
							</div>

							<button type="submit" class="btn btn-primary">Thêm</button>




						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


<div style="margin-top: 130px">
<%@include file="footer.jsp" %></div>

</body>
</html>