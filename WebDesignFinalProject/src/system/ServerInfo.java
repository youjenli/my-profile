package system;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServerInfo
 */
public class ServerInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		res.setContentType("text/plain");
		PrintWriter out = res.getWriter();
		ServletContext context = this.getServletConfig().getServletContext();
		
		info(out, "Servlet Context name", context.getServletContextName() );
        info(out, "Servlet Request URI", req.getRequestURI() );
        info(out, "Servlet Request URL", req.getRequestURL().toString() );
        info(out, "Servlet Request Servlet Path", req.getServletPath() );
        info(out, "Request.Server scheme", req.getScheme() );
        info(out, "Request.Server name", req.getServerName() );
        info(out, "Request.server port", new Integer( req.getServerPort() ).toString() );
        info(out, "Servlet Context Server Info", context.getServerInfo() );
        info(out, "Request Servlet path", req.getServletPath() );
	    
	}

	private void info(PrintWriter out, String attr, String msg){
		if ( attr == null || out == null ){
			return;
		}
		if ( msg == null ){
			out.println("Attribute: " + attr + " is null");
		}
		else {
			out.println(attr + ": " + msg);
		}
	}

}
