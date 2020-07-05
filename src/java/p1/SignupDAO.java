/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package p1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Admin
 */
@Repository
public class SignupDAO {
    
    @Autowired
    private JdbcTemplate jdbc; 
    
    public String checkEmailid(NewUser newuser)
    {
        String result;
        try
        {
        String sql = "select emailid from customers where emailid=? ";
        Object[] inputs = new Object[] {newuser.getEmailid()};
        result= jdbc.queryForObject(sql, inputs, String.class);
        System.out.println(result);
       

        
        }
        catch(EmptyResultDataAccessException e){
            result="empty";
            
        }
        return result;
        
    }
    public void insertUser(NewUser newuser)
    {
             
        String sql = "select emailid from customers where emailid=? ";
        jdbc.update("insert into customers values(?,?,?,?,?,?)",newuser.getFname(),newuser.getLname(),newuser.getEmailid(),newuser.getMobile(),newuser.getSecretquestion(),newuser.getAnswer());
        jdbc.update("insert into login values(?,?)",newuser.getEmailid(),newuser.getPassword());
    }
    
}
