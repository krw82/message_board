package todooracle;
import java.sql.Connection; 	
import java.sql.DriverManager;	
import java.sql.SQLException;


public class DBconnet {
	
	private static final String DB_DRIVER_CLASS = "oracle.jdbc.driver.OracleDriver";
	private static final String DB_URL = "jdbc:oracle:thin:@152.70.254.183:1521:xe";
	
	private static final String DB_USERNAME = "jung";
	private static final String DB_PASSWORD = "1234";




	public static Connection getConnection() {
		Connection con = null; //connection 객체
		try {
			Class.forName(DB_DRIVER_CLASS);
			con = DriverManager.getConnection(DB_URL,DB_USERNAME,DB_PASSWORD);
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
	
			e.printStackTrace();
		}
		
		return con;
	}




}
