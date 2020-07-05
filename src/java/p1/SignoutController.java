/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package p1;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller
public class SignoutController {
    
    @RequestMapping(value="/signout")
    public ModelAndView signout(Model m) {
        System.out.println("on method");
        //m.addAttribute("p1", "aaa");
        return new ModelAndView("signout");
    }
    
  
    
}
