<%@ page import="java.sql.*" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
    <title>Table</title>
</head>
<body>
    <table border="1">
        <%
            Connection conn = DBConnect.getConn();
            Statement statement = conn.createStatement();
            String query = "SELECT * FROM user";

            try {
                ResultSet resultSet = statement.executeQuery(query);

                ResultSetMetaData metaData = resultSet.getMetaData();
                int columnCount = metaData.getColumnCount();

                // Hiển thị tiêu đề cột
                out.print("<tr>");
                for (int i = 1; i <= columnCount; i++) {
                    out.print("<th>" + metaData.getColumnName(i) + "</th>");
                }
                out.print("</tr>");

                // Hiển thị dữ liệu từ bảng
                while (resultSet.next()) {
                    out.print("<tr>");
                    for (int i = 1; i <= columnCount; i++) {
                        out.print("<td>" + resultSet.getString(i) + "</td>");
                    }
                    out.print("</tr>");
                }

                resultSet.close();
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                statement.close();
                conn.close();
            }
        %>
    </table>
</body>
</html>
