<%@page import="com.enity.BookDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:All Books</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<h3 class="text-center">Chào Admin</h3>
	<table class="table table-striped">

		<thead class="bg-primary text-white">


			<tr>

				<th scope="col">ID</th>
				<th scope="col">Ảnh</th>
				<th scope="col">Tên sách</th>
				<th>Tác Giả</th>
				<th>Giá</th>
				<th scope="col">Trạng thái</th>
				<th scope="col">Hành động</th>

			</tr>
		</thead>
		<tbody>

			<%
			BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
			List<BookDtls> list = dao.getAllBooks();
			for (BookDtls b : list) {
			%>
			<tr>
				<td><%=b.getBookName()%></td>
				<td><img src="../book/<%=b.getPhotoName()%>"
					style="width: 50px; height: 50px"></td>
				<td><%=b.getAuthor()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getBookCategory()%></td>
				<td><%=b.getStatus()%></td>
				<td><a href="#" class="btn btn-sm  btn-primary"><i
						class="fa-sharp fa-solid fa-pen-to-square"></i> Sửa</a> <a href="#"
					class="btn btn-sm btn-danger"><i class="fa-solid fa-trash-can"></i>
						Xoá</a></td>

			</tr>
			<%
			}
			%>


		</tbody>



	</table>
<div style="margin-top: 130px">
<%@include file="footer.jsp" %></div>
</body>
</html>