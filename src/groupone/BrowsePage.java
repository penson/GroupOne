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
 * Servlet implementation class SelectBrowseCatalog
 */
@WebServlet("/BrowsePage")
public class BrowsePage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static ArrayList<Coupon> coupons;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BrowsePage() {
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
		String catalogBtn = request.getParameter("catalogBtn");
		
		filterCoupon(catalogBtn);
		request.setAttribute("coupons", coupons);
		request.setAttribute("catalog", catalogBtn);
		request.getRequestDispatcher("/page_selectCoupon.jsp").forward(request, response);
	}
	
	public void filterCoupon(String name) {
		ArrayList<Coupon> allCoupons = DBOperation.getCouponList();
		ArrayList<Coupon> filtered = new ArrayList<Coupon>();
		
		for(Coupon c : allCoupons) {
			if(c.getCategory().equalsIgnoreCase(name))
				filtered.add(c);
		}
		
		//for testing, don't change! =D
		coupons = allCoupons;			
	}		

}
