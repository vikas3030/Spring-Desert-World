/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package p1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller
public class SignupController {
    
   @Autowired
   SignupService signupservice;
    
    @RequestMapping(value = "/signup")    
    public ModelAndView signupDetails(@ModelAttribute("NewUser") NewUser newuser) {
        ModelAndView m=new ModelAndView();;
        
        if(!signupservice.checkEmailid(newuser))
        {
            m.setViewName("signup");
            m.addObject("msg", "Emailid already exists");
            return m;
        }
             
        m.setViewName("signupotp");
        m.addObject("msg", "Please enter the OTP sent to your emailid");
        m.addObject("fname", newuser.getFname());
        m.addObject("lname", newuser.getLname());
        m.addObject("emailid", newuser.getEmailid());
        m.addObject("mobile", newuser.getMobile());
        m.addObject("secretquestion", newuser.getSecretquestion());
        m.addObject("answer", newuser.getAnswer());
        m.addObject("password", newuser.getPassword());
        m.addObject("otp", newuser.getOtp());
      
        return m;
    }
    
    @RequestMapping(value = "/signupotp")    
    public ModelAndView signupOtp(@ModelAttribute("NewUser") NewUser newuser) {
              
        ModelAndView m=new ModelAndView();
        m.setViewName("signupotp");
        if(!signupservice.insertUser(newuser))
        {
            m.addObject("msg", "Incorrect OTP. Please try again");
            return m;
        }
        m.addObject("msg", "Registration successful.<a href='loginsignupdisplay.htm'>Click here to login</a>");
        m.addObject("disabled", "disabled");
      
        return m;
    }
    
}
