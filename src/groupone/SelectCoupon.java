package groupone;

import java.io.IOException;
import java.util.ArrayList;

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
		String[] couponIds = request.getParameterValues("checkBox");
		String gift = request.getParameter("gift");
		
		if(couponIds != null) {
			ArrayList<Coupon> coupons = DBOperation.searchCoupon(couponIds);
			request.setAttribute("coupons", coupons);
			request.setAttribute("gift", gift);
			request.getRequestDispatcher("/page_checkOut.jsp").forward(request, response);
		}
		else {
			//request.getRequestDispatcher("/page_selectCoupon.jsp").forward(request, response);
		}
	}

}
