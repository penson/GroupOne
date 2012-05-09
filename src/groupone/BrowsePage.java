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
		PrintWriter out = response.getWriter();
		
		if(catalogBtn.equals("Travel")) {
			displayCoupon(out, "Travel");
			request.setAttribute("coupons", coupons);
			request.setAttribute("catalog", "Travel");
			request.getRequestDispatcher("/page_couponSelect.jsp").forward(request, response);
		}
		else if(catalogBtn.equals("Food")) {
			displayCoupon(out, "Food");
			request.setAttribute("coupons", coupons);
			request.setAttribute("catalog", "Food");
			request.getRequestDispatcher("/page_couponSelect.jsp").forward(request, response);
		}
		else if(catalogBtn.equals("Moving")) {
			displayCoupon(out, "Moving");
			request.setAttribute("coupons", coupons);
			request.setAttribute("catalog", "Moving");
			request.getRequestDispatcher("/page_couponSelect.jsp").forward(request, response);
		}
		else if(catalogBtn.equals("Health")) {
			displayCoupon(out, "Health");
			request.setAttribute("coupons", coupons);
			request.setAttribute("catalog", "Health");
			request.getRequestDispatcher("/page_couponSelect.jsp").forward(request, response);
		}
		else if(catalogBtn.equals("Photography")) {
			displayCoupon(out, "Photography");
			request.setAttribute("coupons", coupons);
			request.setAttribute("catalog", "Photography");
			request.getRequestDispatcher("/page_couponSelect.jsp").forward(request, response);
		}
		else if(catalogBtn.equals("Footwear")) {
			displayCoupon(out, "Footwear");
			request.setAttribute("coupons", coupons);
			request.setAttribute("catalog", "Footwear");
			request.getRequestDispatcher("/page_couponSelect.jsp").forward(request, response);
		}
		else if(catalogBtn.equals("Magazine")) {
			displayCoupon(out, "Magazine");
			request.setAttribute("coupons", coupons);
			request.setAttribute("catalog", "Magazine");
			request.getRequestDispatcher("/page_couponSelect.jsp").forward(request, response);
		}
		else if(catalogBtn.equals("Home Decorating")) {
			displayCoupon(out, "Home Decorating");
			request.setAttribute("coupons", coupons);
			request.setAttribute("catalog", "Home Decorating");
			request.getRequestDispatcher("/page_couponSelect.jsp").forward(request, response);
		}
		else {
			displayCoupon(out, "Other");
			request.setAttribute("coupons", coupons);
			request.setAttribute("catalog", "Other");
			request.getRequestDispatcher("/page_couponSelect.jsp").forward(request, response);
		}
	}
	
	public void displayCoupon(PrintWriter out, String name) {
		ArrayList<Coupon> allCoupons = DBOperation.getCouponList();
		ArrayList<Coupon> filtered = new ArrayList<Coupon>();
		
		for(Coupon c : allCoupons) {
			if(c.getCategory().equalsIgnoreCase(name))
				filtered.add(c);
		}
		
		//for testing, don't change! =D
		coupons = allCoupons;
/*		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Coupons</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>"+name+"</h1>");
		out.println("<TABLE cellpadding=\"15\" border=\"1\" style=\"background-color: #ffffcc;\">");
		
        for (Coupon c : filtered) {
        	out.println("<TR>");
        	out.println("<TD>" + c.getId() + "</TD>");
        	out.println("<TD>" + c.getTitle() + "</TD>");
        	out.println("<TD>" + c.getCreateDate() + "</TD>");
        	out.println("<TD>" + c.getExpireDate()+ "</TD>");
        	out.println("<TD>" + c.getQuantity() + "</TD>");
        	out.println("<TD>" + c.getSold() + "</TD>");
        	out.println("<TD>" + c.getPrice() + "</TD>");
        	out.println("<TD>" + c.getCategory() + "</TD>");
        	out.println("<TD><input type='button' name='button' value='Buy'></TD>");
        	out.println("</TR>");
        }
        out.println("</TABLE>");
        out.println("<p><a href='page_browse.jsp'>Back</a></p>");
        out.println("<p><a href='page_home.jsp'>Back to home</a></p>");
        out.println("</body>");
        out.println("</html>");
*/			
	}		

}
