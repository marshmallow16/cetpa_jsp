import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class helloCetpa implements Servlet
{
	    int x;
		ServletConfig config;
		public void init(ServletConfig  config)
		{
		this.config=config;
		x=1;
		}
		/*res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		out.println("Hello cetpa");*/
	public void service(ServletRequest req, ServletResponse res) throws IOException,ServletException{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		x++;
		out.println("x= "+x);
		ServletConfig s=getServletConfig();
		String u= s.getInitParameter("user");
		out.println("user= "+u);
		String e= s.getInitParameter("email");
		out.println("user= "+e);
	}
	public ServletConfig getServletConfig(){
		return config;
	}
	public String getServletInfo(){
		return "created by cetpa";
	}
	public void destroy(){
		
	}r
}