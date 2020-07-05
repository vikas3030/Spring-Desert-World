/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package p1;



import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

/**
 *
 * @author Admin
 */
@Component //or  @Repository

public class LoginDAO {  
    
    
    @Autowired
    private JdbcTemplate jdbc;   
    
    
////    or
//    @Autowired
//    public void setJdbc(JdbcTemplate jdbc)
//    {
//        System.out.println("aaa");
//        this.jdbc=jdbc;
//        System.out.println(jdbc);
//    }
//    or
//     @Autowired
//    public LoginDAO(JdbcTemplate jdbc)
//    {
//        System.out.println("bbb");
//        this.jdbc=jdbc;
//        System.out.println(jdbc);
//    }
    
    public String loginValidate(User user)
    {
        String result;
        try
        {
        String sql = "select userid from login where userid=? and password=?";
        Object[] inputs = new Object[] {user.getUserId(),user.getPassword()};
         result= jdbc.queryForObject(sql, inputs, String.class);
        System.out.println(result);
       

        
        }
        catch(EmptyResultDataAccessException e){
            result="empty";
        }
        return result;
        
    }
   
    
}
