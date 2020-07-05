/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package p1;

import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */
@Service
public class SignupService {
    
    @Autowired
    SignupDAO sd;
    
    @Autowired
    private JavaMailSender mailSender;
    
    public boolean checkEmailid(NewUser newuser)
    {
        if(sd.checkEmailid(newuser).equals("empty")){
            sendOtpOnEmail(newuser);
            return true;
        }
        return false;
    }
    
    public boolean insertUser(NewUser newuser)
    {
        if(!newuser.getOtp().equals(newuser.getEnteredotp()))
        {
            return false;
        }
        sd.insertUser(newuser);
        return true;
    }
    
    public void sendOtpOnEmail(NewUser newuser)
    {
        Random r=new Random();
        String otp=r.nextInt(10)+""+r.nextInt(10)+""+r.nextInt(10)+""+r.nextInt(10);
        
        SimpleMailMessage email = new SimpleMailMessage();
        email.setTo(newuser.getEmailid());
        email.setSubject("New account OTP");
        email.setText("Greetings, OTP for activation is "+otp);
         
        // sends the e-mail
        
        mailSender.send(email);
        newuser.setOtp(otp);
    }
    
}
