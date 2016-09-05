package sun.cetpa;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class TestController {

	@Autowired
	DataSource dataSource;
	@RequestMapping(value="/cetpa")
	public ModelAndView hi(@ModelAttribute User user){    
		/* returns ModelAndView object */

		String sql = "insert into student(STUDENT_NAME,ADDRESS)VALUES (?, ?)";

		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);

		jdbcTemplate.update(
				sql,
				new Object[] {user.getName() ,user.getAddress()});
	String u="Welcome to Spring MVC";
	return new ModelAndView("welcome","user",user);
	}
	
	@RequestMapping(value="/hello")
	public ModelAndView hello(){
	String address="Welcome to Deoria";
	return new ModelAndView("success","address",address);
	}
	
	@RequestMapping(value="/zr")
	public ModelAndView zr(){
		String p="Hello user";
		return new ModelAndView("hello","p",p);
	}
	
	@RequestMapping(value="/hi")
	public String print(){
		String s="Hello cetpa";
		return "hello";
	}
	@RequestMapping(value="/g")

	public String get(@ModelAttribute User user){
		
		return "index";
	}
	
}
