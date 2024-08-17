package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.enity.BookDtls;
import com.mysql.cj.xdevapi.PreparableStatement;

public class BookDAOImpl implements BookDAO {

	private Connection conn;

	public BookDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addBooks(BookDtls b) {
		boolean f = false;
		try {
			String sql = "insert into book_dtls(bookname,author,price,bookCategory,status,photo_name,email) values(?,?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getBookCategory());
			ps.setString(5, b.getStatus());
			ps.setString(6, b.getPhotoName());
			ps.setString(7, b.getEmail());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;

			}

		} catch (Exception e) {
			
			e.printStackTrace();	
		}

		return f;
	}
	
	

	public List<BookDtls> getNewBook() {
		
		
		List<BookDtls> list = new ArrayList<BookDtls>();
		BookDtls b=null;
		
		try {
			String sql= "select * from book_dtls where bookCategory=? and status=?";
			PreparedStatement ps =conn.prepareStatement("");
			ps.setString(1, "Mới");
			ps.setString(2, "Còn hàng");
			
			ResultSet rs=ps.executeQuery();
			int i=1;
			
			while(rs.next() && i<=4) {
				
				b= new BookDtls();
				b=new BookDtls();
				b.setBookName(rs.getString(1));
				b.setAuthor(rs.getString(2));
				b.setPrice(rs.getString(3));
				b.setBookCategory(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setPhotoName(rs.getString(6));
				b.setEmail(rs.getString(7));
				
				list.add(b);
				i++;
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		return list;
	}

	public List<BookDtls> getAllBooks() {
		
		List<BookDtls> list=new ArrayList<BookDtls>();
		BookDtls b=null;
		
		try {
			String sql ="select * from book_dtls";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				b=new BookDtls();
				b.setBookName(rs.getString(1));
				b.setAuthor(rs.getString(2));
				b.setPrice(rs.getString(3));
				b.setBookCategory(rs.getString(4));
				b.setStatus(rs.getString(5));
				b.setPhotoName(rs.getString(6));
				b.setEmail(rs.getString(7));
				
				list.add(b);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return list;
	}

	public BookDtls getBooById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean updateEditBooks(BookDtls b) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean deleteBooks(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	public List<BookDtls> getRecentBook() {
		// TODO Auto-generated method stub
		return null;
	}

	public List<BookDtls> getOldBook() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	

}
