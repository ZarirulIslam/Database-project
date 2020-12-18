package Database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

abstract class DriverConnect{
	private static Connection connection=null;
	static Connection getInstance() throws SQLException,ClassNotFoundException {
		if(connection==null)
		{
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost/librarymanagement?"+"user=root");
		}
		return connection;
	}
	static void close()
	{
		try {
			connection.close();
		}catch(SQLException ex) {
			Logger.getLogger(DriverConnect.class.getName()).log(Level.SEVERE,null,ex);
		}
		}
}