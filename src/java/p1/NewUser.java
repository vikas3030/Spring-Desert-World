/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package p1;

import org.springframework.beans.factory.annotation.Required;


/**
 *
 * @author Admin
 */

public class NewUser {
    
    private String fname,lname,emailid,password,secretquestion,answer,mobile,otp,enteredotp;
    public NewUser()
    {
        
    }
    public NewUser(String fname,String lname,String emailid,String mobile,String password,String secretquestion,String answer)
    {
        this.fname=fname;
        this.lname=lname;
        this.emailid=emailid;
        this.mobile=mobile;
        this.password=password;
        this.secretquestion=secretquestion;
        this.answer=answer;
        
    }
    @Required
    public void setName(String fname)
    {
        this.fname=fname;
    }
    public void setFname(String fname)
    {
        this.fname=fname;
    }
    public void setLname(String lname)
    {
        this.lname=lname;
    }
    public void setEmailid(String emailid)
    {
        this.emailid=emailid;
    }
    public void setMobile(String mobile)
    {
        this.mobile=mobile;
    }
    public void setPassword(String password)
    {
        this.password=password;
    }
    public void setSecretquestion(String secretquestion)
    {
        this.secretquestion=secretquestion;
    }
    
    public void setOtp(String otp)
    {
        this.otp=otp;
    }
    public void setEnteredotp(String enteredotp)
    {
        this.enteredotp=enteredotp;
    }
    public void setAnswer(String answer)
    {
        this.answer=answer;
    }
    public String getFname()
    {
        return fname;
    }
    public String getLname()
    {
        return lname;
    }
    public String getEmailid()
    {
        return emailid;
    }
    public String getMobile()
    {
        return mobile;
    }
    public String getPassword()
    {
        return password;
    }
    public String getSecretquestion()
    {
        return secretquestion;
    }
    public String getAnswer()
    {
        return answer;
    }
    public String getOtp()
    {
        return otp;
    }
    public String getEnteredotp()
    {
        return enteredotp;
    }
    
    
}
