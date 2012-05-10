package groupone;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CouponSelect
 */
@WebServlet("/SelectCoupon")
public class SelectCoupon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectCoupon() {
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
		
		String[] checkBoxes = request.getParameterValues("checkBox");
		for(String s : checkBoxes) {
			System.out.println(s);
		}
		
		
		String couponId = request.getParameter("textBox");
		Coupon coupon = DBOperation.searchCoupon(couponId);
		
		request.setAttribute("coupon", coupon);
		request.getRequestDispatcher("/page_checkOut.jsp").forward(request, response);
	}

}
