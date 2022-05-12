package usertable;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.sql.DataSource;



public class UserDAO {

	private Connection conn; 
	private PreparedStatement pstmt; 
	private ResultSet rs; 
	
	public int join(User usertable) {
		  String sql = "insert into user values(?, ?, ?, ?, ?)";
		  try {
		    pstmt = conn.prepareStatement(sql);
		    pstmt.setString(1, usertable.getuserID());
		    pstmt.setString(2, usertable.getuserPASSWORD());
		    pstmt.setString(3, usertable.getusername());
		    pstmt.setString(5, usertable.getEMAIL());
		    pstmt.setString(5, usertable.getPHONENUMBER());
		    return pstmt.executeUpdate();
		  }catch (Exception e) {
		 	e.printStackTrace();
		  }
		  return -1;
		}
	
	public UserDAO() {
		try {
			//try catch 
			String driverName = "oracle.jdbc.driver.OracleDriver";
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "scott";
			String dbPassword = "1234"; 
			Class.forName(driverName); 
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword); 
		}catch (Exception e) {
			e.printStackTrace();
		
		}
	}
	
	public int login (int  userID, String PASSWORD) {
		String sql = "select userPassword from user where userID = ? ";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt = setInt(1, userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(PASSWORD)) {
					return 1;
				}else
					return 0;
			}
			return -1;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2;	
	}
	private PreparedStatement setInt(int i, int userID) {
		
		return null;
	}
}



