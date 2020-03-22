package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class nodeDAO {
	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	// static이면 객체를 생성을 안하고 받아올 수 있음
	private static nodeDAO dao;
	private nodeDAO() {
		
	}
	public static nodeDAO getDAO() {
		if(dao == null) {
			dao = new nodeDAO();
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
	
	public ArrayList<nodeDTO> nodeSelect(nodeDTO dto) {
		ArrayList<nodeDTO> list = new ArrayList<nodeDTO>();
		int cnt = 0;

		try {
			getConnection();

			String sql = "select *\r\n" + 
					"from DATATESTSET, DATATESTSET2\r\n" + 
					"where DATATESTSET.F_Node = datatestset2.node_id\r\n" + 
					"and (datatestset.f_node = ? and datatestset.t_node = ?)";
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, dto.getF_node());
			psmt.setInt(2, dto.getN_node());
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				int f_node = rs.getInt(1);
				int t_node = rs.getInt(2);
				int road_rank_ = rs.getInt(3);
				int road_type_ = rs.getInt(4);
				int node_type = rs.getInt(6);
				nodeDTO dto2 = new nodeDTO(f_node, t_node, road_rank_, road_type_, node_type);
				list.add(dto2);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}
	
}
