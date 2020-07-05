/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package p1;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@SessionAttributes({"userId","pass"})
@Controller

public class LoginCheckController {
    
    @Autowired
    LoginDAO logindao;    
    
    
    
   @RequestMapping(value="/index")
    public ModelAndView displayHome(Model m) {
        System.out.println("on method");
        //m.addAttribute("p1", "aaa");
        return new ModelAndView("home");
    }
    
  
    
    @RequestMapping(value = "/loginsignupdisplay")    
    public ModelAndView displayLoginPage(HttpServletRequest request,
		   HttpServletResponse response) { 
     
      
      ModelAndView m=new ModelAndView("signup");
      return m;
    }
    
    @RequestMapping(value = "/logincheck")    
    public ModelAndView loginCheck(@ModelAttribute("user") User user) {
          
      ModelAndView m;
      
      
      if(logindao.loginValidate(user).equalsIgnoreCase("empty")){
          m=new ModelAndView("signup","msg","Invalid Credentials");
          return m;
      }
      
          
           m=new ModelAndView("home");
           
           m.addObject("userId",user.getUserId());
           m.addObject("pass","abc");
      
      
      return m;
    }
    
}
