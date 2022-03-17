package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.sql.DataSource;



public class UserDAO {// DAO의 사용이유 https://minaminaworld.tistory.com/61

	private Connection conn; //자바와 데이터베이스를 연결
	private PreparedStatement pstmt; //sql injection등 공격을 막기 위해 사용자에게 변수에 값만 받아서 구문을 실행
	private ResultSet rs; // SQL문 실행 후에 결과값 받아오기
	
	//DB연결
	public UserDAO() {
		try {
			//try catch 문을 이용해 예외처리
			String driverName = "oracle.jdbc.driver.OracleDriver";//oracle driver을 찾기 위해 작성(oracle 접속을 위한 매개체)
			String dbURL = "jdbc:oracle:thin:@localhost:1521:xe";
			String dbID = "scott";//db 접속시 만든 id
			String dbPassword = "1234"; //그 password
			Class.forName(driverName); //
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword); //db에 접속하기 위한 코드
		}catch (Exception e) {
			e.printStackTrace();//에러 메세지의 발생 근원지를 찾아 단계별로 에러 출력
		
		}
	}
	
	public int login (int  STUDENT_ID, String PASSWORD) {
		String sql = "select userPassword from user where userID = ? ";//로그인 함수 실행 시 oracle에 입력할 sql문 입력
		try {
			pstmt = conn.prepareStatement(sql);//pstmt변수에 sql문을 집어넣음
			pstmt = setInt(1, STUDENT_ID);//sql문 중 첫번째 물음표에 STUDENT_ID를 넣음
			rs = pstmt.executeQuery();//sql을 돌리고 그 결과 rs라는 변수에 저장(executeQuery=>결과 값을 숫자로 변환
			if(rs.next()) {//만약 STUDENT_ID가 db에 존재하는 경우
				if(rs.getString(1).equals(PASSWORD)) {//STUDENT_ID에 해당하는 비밀 번호가 일치 하는 경우 
					return 1;//성공
				}else
					return 0;//STUDENT_ID는 존재하지만 그 PASSWORD가 틀림
			}
			return -1;//STUDENT_ID도 DB에 존재하지 않음
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -2;	//DB 오류
	}
	private PreparedStatement setInt(int i, int STUDENT_ID) {
		// TODO Auto-generated method stub
		return null;
	}
}



