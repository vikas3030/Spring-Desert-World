/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package p1;

import javax.validation.constraints.Size;

/**
 *
 * @author Admin
 */
public class User {
    
    
    private String userid;   
    
   
    private String password;  
   
   
    
    public void setUserId(String u)
    {
        userid=u;
    }
    public void setPassword(String p)
    {
        password=p;
    }
    public String getUserId()
    {
        return userid;
    }
    public String getPassword()
    {
        return password;
    }
}
