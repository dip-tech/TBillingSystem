
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectDB {
    static Connection con=null;
    public static Connection connect()
    {
        try{
            DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/telephone_billing_system_db", "root", "");
            System.out.println(con);
        }
        catch(SQLException e)
        {
            System.out.println("Error:"+e);
        }
        return  con;
    }
    
}
