package groupone;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ChangePassword
 */
@WebServlet("/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePassword() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		HttpSession userSession = request.getSession(false);
		String userEmail = (String) userSession.getAttribute("userEmail");
	
		String currentPassword = request.getParameter("currentPassword").toString();
		String newPassword = request.getParameter("newPassword").toString();
		
		if(DBOperation.checkPassword(userEmail, currentPassword))
		{
			if(DBOperation.resetPassword(userEmail, newPassword))
			{
				request.setAttribute("passwordChange", "Password has been changed.");
				request.getRequestDispatcher("/page_account.jsp").forward(request, response);
			}
			else
			{
				request.setAttribute("passwordError", "Uh-Oh! FAIL!");
				request.getRequestDispatcher("/page_account.jsp").forward(request, response);
			}
		}
		else
		{
			request.setAttribute("passwordNoMatch", "Uh-Oh! Password Incorrect!");
			request.getRequestDispatcher("/page_account.jsp").forward(request, response);
			
		}
	}

}
