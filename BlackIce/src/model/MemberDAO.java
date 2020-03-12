package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class MemberDAO {
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	// static이면 객체를 생성을 안하고 받아올 수 있음
	private static MemberDAO dao;
	private MemberDAO() {
		
	}
	public static MemberDAO getDAO() {
		if(dao == null) {
			dao = new MemberDAO();
		}
		return dao;
	}

	private void getConnection() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";

			conn = DriverManager.getConnection(db_url, db_id, db_pw);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int join(MemberDTO dto) {

		int cnt = 0;

		try {
			getConnection();

			String sql = "insert into bi_member values(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getEmail());
			psmt.setString(3, dto.getPw());
			psmt.setString(4, dto.getTel());
			cnt = psmt.executeUpdate();
			if (cnt > 0) {
				System.out.println("회원가입 성공");
			} else {
				System.out.println("회원가입 실패");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
	
	public MemberDTO login(MemberDTO dto) {

		MemberDTO info = null;
		String login_name = null;
		String login_email = null;
		String login_tel = null;

		try {
			getConnection();

			String sql = "select * from bi_member where email = ? and pw = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getEmail());
			psmt.setString(2, dto.getPw());

			rs = psmt.executeQuery();

			if (rs.next()) {
				login_name = rs.getString(1);
				login_email = rs.getString(2);
				login_tel = rs.getString(4);

				info = new MemberDTO(login_name, login_email, login_tel);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		System.out.println(info);
		return info;

	}

	public int update(MemberDTO dto) {

		int cnt = 0;

		try {
			getConnection();

			String sql = "update bi_member set name = ?, pw = ?, tel = ? where email = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getName());
			psmt.setString(4, dto.getEmail());
			psmt.setString(2, dto.getPw());
			psmt.setString(3, dto.getTel());
			cnt = psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
	
}
