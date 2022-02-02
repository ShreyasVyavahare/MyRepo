package lp.dao;

import java.sql.*;

/**
 *
 * @author Shree
 */
public class LoginDao {
    String sql = "select * from login where uname = ? and pass = ?";
    String url = "jdbc:mysql://localhost:3306/SHER";
	String dbuname = "root";
	String dbpass = "6.62607004";
    public boolean check(String uname ,String pass){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,dbuname,dbpass);
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, uname);
            stmt.setString(2, pass);
            ResultSet rs =stmt.executeQuery();
            
            if(rs.next()){
                return true;
            }
            
            
        }
        catch(Exception e){
            e.printStackTrace();
            
        }
        
        
        return false;
        
        
    }
    
}
