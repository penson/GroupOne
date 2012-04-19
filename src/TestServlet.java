
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String userName = request.getParameter("userName").toString();
        String password = request.getParameter("password").toString();
        /*
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Servlet GreetingServlet</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>Servlet GreetingServlet at " + request.getContextPath () + "</h1>");
        out.println("<a href=\"http://www.groupon.com/\">Visit Groupons!<a>");
        out.println("<p>Welcome " + userName + "</p>");
        out.println("</body>");
        out.println("</html>");
	
		*/
        
        out.println("<a href=\"newPage.jsp\">Visit Groupons!<a>");
        out.close();
        
	}

}
