package groupone;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddCoupon
 */
@WebServlet("/AddCoupon")
public class AddCoupon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCoupon() {
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

		String title = request.getParameter("title").toString();
		String month = request.getParameter("month").toString();
		String day = request.getParameter("day").toString();
		String year = request.getParameter("year").toString();
		String date = year + "-" + month + "-" + day;
		String quantity = request.getParameter("quantity").toString();
		String price = request.getParameter("price").toString();
		String category = request.getParameter("category").toString();
				
		
		if(DBOperation.AddCoupon(title, date, quantity, price, category))
		{
			request.setAttribute("couponAdded", "Coupon has been added!");
			request.getRequestDispatcher("/add_coupon.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("couponError", "There was An error adding Coupon");
			request.getRequestDispatcher("/add_coupon.jsp").forward(request, response);
		}
		
	}

}
