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
 * Servlet implementation class CreateAccount
 */
@WebServlet("/CreateVendor")
public class CreateVendor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateVendor() {
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
		
		HttpSession session = request.getSession(true);
		
		String firstName = request.getParameter("v_firstname").toString();
		String email = request.getParameter("v_reg_email__").toString();
		String email2 = request.getParameter("v_reg_email_confirmation__").toString();
		String pass = request.getParameter("v_reg_passwd__").toString();
		String encryptedPass = pass;
		try {
			encryptedPass = AeSimpleSHA1.SHA1(pass);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if (firstName.equals("") || email.equals("") || email2.equals("") || pass.equals("")) {
			request.setAttribute("vendor_error", "Uh-Oh! Did you forget something?");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
		else if (!email.equalsIgnoreCase(email2)) {
			request.setAttribute("vendor_error", "Uh-Oh! Emails don't match!");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
		else if (DBOperation.createAccount(firstName, "", email, encryptedPass, "V")) 
		{
			Account account = DBOperation.getAccount(email, encryptedPass);
			session.setAttribute("userType", "vendor");
			session.setAttribute("account", account);
			session.setAttribute("accountId", account.getId());
			session.setAttribute("userEmail", email);
			request.getRequestDispatcher("/registration_confirmation.jsp").forward(request, response);
		} else {
			// Something is wrong. Go back to index.			
			request.setAttribute("vendor_error", "Uh-Oh! Registration failed!\nTry resseting password");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
        
	}

}
