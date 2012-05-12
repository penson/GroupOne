package groupone;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckOut
 */
@WebServlet("/CheckOut")
public class CheckOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckOut() {
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
		// TODO Auto-generated method stub
		/*
		String[] textFields = request.getParameterValues("textField");		
		for(String s: textFields) {
			if(s.isEmpty()) {
				request.setAttribute("errorMsg", "Cannot leave blank information");
				request.getRequestDispatcher("/.jsp").forward(request, response);
			}
		}
		*/
		String accountId = request.getSession().getAttribute("accountId").toString();
		String userEmail = request.getSession().getAttribute("userEmail").toString();
		String objectId = request.getParameter("objectId");
		String[] couponIds = (String[])request.getSession().getAttribute(objectId);
		boolean gift = false;
		
		if(request.getParameter("gift").equalsIgnoreCase("ON")) {
			gift = true;
		}
		
		DBOperation.updateCoupon(couponIds);
		DBOperation.createTransaction(accountId, userEmail, couponIds, gift);
		
		ArrayList<Transaction> trans = DBOperation.getTransactionList();
		for(Transaction t : trans) {
			System.out.println(t.getIdTransaction());
			System.out.println(t.getIdTransAcct());
			System.out.println(t.getIdTransCoup());
			System.out.println(t.getDate());
			System.out.println(t.getType());
			System.out.println(t.getEmail());
		}
		
		request.getRequestDispatcher("/page_invoice.jsp").forward(request, response);
	}

}
