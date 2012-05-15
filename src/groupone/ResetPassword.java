package groupone;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResetPassword
 */
@WebServlet("/ResetPassword")
public class ResetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResetPassword() {
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
		String email = request.getParameter("email").toString();
		String newPassword = request.getParameter("newPassword").toString();
		String confirmPassword = request.getParameter("confirmPassword").toString();
		
		try {
			newPassword = AeSimpleSHA1.SHA1(newPassword);
			confirmPassword = AeSimpleSHA1.SHA1(confirmPassword);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(DBOperation.emailExists(email))
		{
			if(newPassword.equals(confirmPassword))
			{
				if(DBOperation.resetPassword(email, newPassword))
				{
					request.setAttribute("passwordReset", "Password reset. Please Log in");
					request.getRequestDispatcher("/index.jsp").forward(request, response);
				}
				else
				{
					request.setAttribute("passwordError", "Uh-Oh! FAIL!");
					request.getRequestDispatcher("/page_forgetPassword.jsp").forward(request, response);
				}
			}
			else
			{
				request.setAttribute("passwordNoMatch", "Uh-Oh! Passwords Didn't Match!");
				request.getRequestDispatcher("/page_forgetPassword.jsp").forward(request, response);
			}
		}
		else
		{
			request.setAttribute("noEmailExists", "Uh-Oh! Email doesn't exist!");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
 
	}

}
