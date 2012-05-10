package groupone;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DeleteCoupon
 */
@WebServlet("/DeleteCoupon")
public class DeleteCoupon extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCoupon() {
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
		System.out.println("CouponId: " + request.getParameter("couponDelete"));
		DBOperation.deleteCoupon(request.getParameter("couponDelete"));
		
        PrintWriter out = response.getWriter();

        ArrayList<Coupon> coupons = DBOperation.getCouponList();
        
        ArrayList<Coupon> filtered = new ArrayList<Coupon>();
        
//        Account account = (Account) request.getAttribute("account");
        System.out.println(request.getAttribute("accountId"));
        for (Coupon c : coupons) {
        	if (c.getVendor().equalsIgnoreCase("20")) {
        		filtered.add(c);
        		System.out.println(c.getTitle());
        	}
        		
        }
        
        request.setAttribute("coupons", filtered);
        request.getRequestDispatcher("/delete_coupon.jsp").forward(request, response);
	}

}
