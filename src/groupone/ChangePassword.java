package groupone;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession userSession = request.getSession(false);
		Account account = (Account)userSession.getAttribute("account");
		String currentPassword = request.getParameter("currentPassword").toString();
		String newPassword = request.getParameter("newPassword").toString();
		String confirmPassword = request.getParameter("confirmPassword").toString();
		
		try {
			currentPassword = AeSimpleSHA1.SHA1(currentPassword);
			newPassword = AeSimpleSHA1.SHA1(newPassword);
			confirmPassword = AeSimpleSHA1.SHA1(confirmPassword);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(!currentPassword.equals(account.getPassword())) {
			System.out.println("Wrong Password!");
			request.setAttribute("errorMsg", "Incorrect password");
		}
		else if(!newPassword.equals(confirmPassword)) {
			System.out.println("Passwords did not match!");
			request.setAttribute("errorMsg", "Passwords did not match!");
		}
		else if(DBOperation.resetPassword(account.getEmail(), newPassword)) {
			System.out.println("Password changed!");
			request.setAttribute("errorMsg", "Password Changed!");
			account.setPassword(newPassword);
		}
		else {
			System.out.println("Error! Password was not changed!");
			request.setAttribute("errorMsg", "Server Encountered an Error. Password not changed!");
		}
		
		request.getRequestDispatcher("/page_account.jsp").forward(request, response);
	}
}
