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

		String accountId = request.getSession().getAttribute("accountId").toString();
		String userEmail = request.getSession().getAttribute("userEmail").toString();
		String objectId = request.getParameter("objectId");
		String objectId2 = request.getParameter("objectId2");
		String[] couponIds = (String[])request.getSession().getAttribute(objectId);
		boolean gift = false;
		
		if(request.getParameter("gift").equalsIgnoreCase("ON")) 
		{
			gift = true;
		}
		
		DBOperation.updateCoupon(couponIds);
		DBOperation.createTransaction(accountId, userEmail, couponIds, gift);
		
		request.setAttribute("coupons", request.getSession().getAttribute(objectId2));
		request.getRequestDispatcher("/page_invoice.jsp").forward(request, response);
	}

}
