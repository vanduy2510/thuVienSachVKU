
<!DOCTYPE html>
<%@page import="com.enity.BookDtls"%>
<%@page import="com.enity.User"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DB.TableServlet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.user.servlet.CartServlet"%>
<html>
<head>
<meta charset="UTF-8">
<%@ page contentType="text/html; charset=UTF-8"%>
<title>ThuVienSachDienTu</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
.back-img {
	background: url("img/b1.jpg");
	height: 50vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}

.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>
</head>
<body style="background-color: #f7f7f7;">


	<%
	User u = (User) session.getAttribute("userobj");
	%>


	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">

		<h2 class="text-center text-danger">Thư Viện Sách Điện Tử VKU</h2>

	</div>



	<!-- Start gan day -->

	<div class="container">
		<h3 class="text-center">Sách gần đây</h3>

		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Lập trình Java căn bản</p>
						<p>PGS.TS.Huỳnh Công Pháp</p>
						<div class="row text-center">

							<%
							if (u == null) {
							%>
							<a href="login.jsp" class="btn btn-danger btn-sm ml-1"><i
								class="fa-sharp fa-solid fa-cart-plus"></i> Vào giỏ hàng</a>
							<%
							} else {
							%>
							<a href="cart?bid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-1"><i
								class="fa-sharp fa-solid fa-cart-plus"></i> Vào giỏ hàng</a>
							<%
							}
							%>


							<a href="" class="btn btn-success btn-sm ml-1">Chi tiết</a> <a
								href="" class="btn btn-danger btn-sm ml-1">50K</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/and.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Lập trình Andoroid</p>
						<p>Ths.Trương Thị Ngọc Phượng</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-sharp fa-solid fa-cart-plus"></i> Vào giỏ hàng</a> <a
								href="" class="btn btn-success btn-sm ml-1">Chi tiết</a> <a
								href="" class="btn btn-danger btn-sm ml-1">100K</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/cpp.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Giáo trình C++</p>
						<p>GS.Phạm Văn Ất</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-sharp fa-solid fa-cart-plus"></i> Vào giỏ hàng</a> <a
								href="" class="btn btn-success btn-sm ml-1">Chi tiết</a> <a
								href="" class="btn btn-danger btn-sm ml-1">40K</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/py.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Làm quen với Python</p>
						<p>Rosie Dickins</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-sharp fa-solid fa-cart-plus"></i> Vào giỏ hàng</a> <a
								href="" class="btn btn-success btn-sm ml-1">Chi tiết</a> <a
								href="" class="btn btn-danger btn-sm ml-1">70K</a>
						</div>
					</div>
				</div>
			</div>



		</div>

		<div class="text-center mt-1">
			<a href="" class="btn btn-danger btn-sm text-white">Xem tất cả</a>
		</div>

	</div>


	<!-- End gan day -->
	<hr>
	<!-- Start sach moi -->

	<div class="container">
		<h3 class="text-center">Sách mới</h3>

		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/dnt.png" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Đắc nhân tâm</p>
						<p>Dale Carnegie</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-sharp fa-solid fa-cart-plus"></i> Vào giỏ hàng</a> <a
								href="" class="btn btn-success btn-sm ml-1">Chi tiết</a> <a
								href="" class="btn btn-danger btn-sm ml-1">150K</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/nna.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Hoa vàng trên cỏ xanh</p>
						<p>Nguyễn Nhật Ánh</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-sharp fa-solid fa-cart-plus"></i> Vào giỏ hàng</a> <a
								href="" class="btn btn-success btn-sm ml-1">Chi tiết</a> <a
								href="" class="btn btn-danger btn-sm ml-1">90K</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/sc.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Sống chậm</p>
						<p>Melanie Barnes</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-sharp fa-solid fa-cart-plus"></i> Vào giỏ hàng</a> <a
								href="" class="btn btn-success btn-sm ml-1">Chi tiết</a> <a
								href="" class="btn btn-danger btn-sm ml-1">120K</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/tt.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Thay đổi sau những vấp ngã</p>
						<p>Liêu Triệu Phong</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-1"><i
								class="fa-sharp fa-solid fa-cart-plus"></i> Vào giỏ hàng</a> <a
								href="" class="btn btn-success btn-sm ml-1">Chi tiết</a> <a
								href="" class="btn btn-danger btn-sm ml-1">77K</a>
						</div>
					</div>
				</div>
			</div>



		</div>

		<div class="text-center mt-1">
			<a href="" class="btn btn-danger btn-sm text-white">Xem tất cả</a>
		</div>

	</div>


	<!-- End sach moi -->

	<hr>

	<!-- Start sach cu -->

	<div class="container">
		<h3 class="text-center">Hết hàng</h3>

		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/ngk.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Nhà giảm kim</p>
						<p>Paulo Coelho</p>
						<div class="row text-center">
							<a href="" class="btn btn-success btn-sm ml-5">Xem chi tiết</a> <a
								href="" class="btn btn-danger btn-sm ml-1">250K</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/dam-uoc-mo.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Dám ước mơ</p>
						<p>Florence Littauer</p>
						<div class="row text-center">
							<a href="" class="btn btn-success btn-sm ml-5">Xem chi tiết</a> <a
								href="" class="btn btn-danger btn-sm ml-1">69K</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/kgd.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Không gia đình</p>
						<p>Hector Malot</p>
						<div class="row text-center">
							<a href="" class="btn btn-success btn-sm ml-5">Xem chi tiết</a> <a
								href="" class="btn btn-danger btn-sm ml-1">99K</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/pi.jpg" style="width: 150px; height: 200px"
							class="img-thumblin">
						<p>Life of Pi</p>
						<p>Yan Martel</p>
						<div class="row text-center">
							<a href="" class="btn btn-success btn-sm ml-5">Xem chi tiết</a> <a
								href="" class="btn btn-danger btn-sm ml-1">160K</a>
						</div>
					</div>
				</div>
			</div>



		</div>

		<div class="text-center mt-1">
			<a href="" class="btn btn-danger btn-sm text-white">Xem tất cả</a>
		</div>

	</div>


	<!-- End sach cu -->

	<%@include file="all_component/footer.jsp"%>

</body>
</html>