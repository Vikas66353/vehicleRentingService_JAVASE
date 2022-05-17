package db;
import java.sql.*;

public class DBConnection {
    public Connection con;
    public Statement stmt;
    public ResultSet rs;
    public PreparedStatement pstmt;
    public DBConnection() 
    {
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vehicle_renting", "root", "root");
        }
        catch(Exception e)
        {
        e.printStackTrace();
        }
    }
    
}
