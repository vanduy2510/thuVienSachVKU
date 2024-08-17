package com.DB;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/TableServlet")
public class TableServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Thiết lập kết nối CSDL
            Connection conn = DBConnect.getConn();
            Statement statement = conn.createStatement();

            String query = "SELECT * FROM user";
            ResultSet resultSet = statement.executeQuery(query);

            // Đưa dữ liệu vào request attribute
            request.setAttribute("resultSet", resultSet);

            // Chuyển hướng tới file JSP để hiển thị dữ liệu
            request.getRequestDispatcher("table.jsp").forward(request, response);

            resultSet.close();
            statement.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
