package sun.cetpa;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class TestController {

	@RequestMapping(value="/cetpa")
	public ModelAndView hi(){
	
	String user="Welcome to Spring MVC";
	return new ModelAndView("welcome","user",user);
	}
	
	@RequestMapping(value="/hello")
	public ModelAndView hello(){
	String address="Welcome to Deoria";
	return new ModelAndView("success","address",address);
	}
}
