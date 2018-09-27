package ex_been;
import java.sql.*;
import java.util.*;

public class student_DAO {
	public void insertStudent(student_VO item) throws Exception {
		String no = item.getNo();
		String name = item.getName();

		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","201550057","201550057");

		PreparedStatement pstmt = conn.prepareStatement("insert into student values(?,?)");
		pstmt.setString(1,no);
		pstmt.setString(2,name);
		pstmt.executeUpdate();

		pstmt.close();
		conn.close();
	}
	public List<student_VO> selectStudent() throws Exception
{
		List<student_VO> items = new ArrayList<student_VO>(); 
		Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","201550057","201550057");

		//해당 데이터베이스 테이블에 있는 값을 불러온다.
		PreparedStatement pstmt = conn.prepareStatement("select * from student");
		ResultSet rs = pstmt.executeQuery();
		 
		while(rs.next()) {
			 student_VO item=new student_VO();
			 item.setNo(rs.getString("no"));
			 item.setName(rs.getString("name"));
			 items.add(item);
		}
		
		return items;
	}
}
