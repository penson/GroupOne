package groupone;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ChangeEmail
 */
@WebServlet("/ChangeEmail")
public class ChangeEmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangeEmail() {
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
		HttpSession userSession = request.getSession(false);
		Account account = (Account)userSession.getAttribute("account");
		String currentEmail = account.getEmail();
		System.out.println(currentEmail);
		String newEmail = request.getParameter("newEmail").toString().toUpperCase();
		
		if(DBOperation.changeEmail(currentEmail, newEmail))
		{
			request.setAttribute("emailChange", "Email Address Updated");
			account.setEmail(newEmail);
			request.getRequestDispatcher("/page_account.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("emailChange", "Error Changing Email Address");
			request.getRequestDispatcher("/page_account.jsp").forward(request, response);
		}
	}

}
