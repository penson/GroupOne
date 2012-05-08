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
@WebServlet("/SelectBrowseCatalog")
public class SelectBrowseCatalog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectBrowseCatalog() {
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
		String name = request.getParameter("catalogBtn");
		PrintWriter out = response.getWriter();
		
		if(name.equals("Travel")) {
			//request.setAttribute("catalog", "Travel");
			//request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
			displayCoupon(out, "Travel");
		}
		else if(name.equals("Food")) {
			//request.setAttribute("catalog", "Food");
			//request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
			displayCoupon(out, "Food");
		}
		else if(name.equals("Moving")) {
			//request.setAttribute("catalog", "Moving");
			//request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
			displayCoupon(out, "Moving");
		}
		else if(name.equals("Health")) {
			//request.setAttribute("catalog", "Health");
			//request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
			displayCoupon(out, "Health");
		}
		else if(name.equals("Photography")) {
			//request.setAttribute("catalog", "Photography");
			//request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
			displayCoupon(out, "Photography");
		}
		else if(name.equals("Footwear")) {
			//request.setAttribute("catalog", "Footwear");
			//request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
			displayCoupon(out, "Footwear");
		}
		else if(name.equals("Magazine")) {
			//request.setAttribute("catalog", "Magazine");
			//request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
			displayCoupon(out, "Magazine");
		}
		else if(name.equals("Home Decorating")) {
			//request.setAttribute("catalog", "Home Decorating");
			//request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
			displayCoupon(out, "Home Decorating");
		}
		else {
			//request.setAttribute("catalog", "Other");
			//request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
			displayCoupon(out, "Other");		
		}	
	}
	
	public void displayCoupon(PrintWriter out, String name) {
		ArrayList<Coupon> allCoupons = DBOperation.getCouponList();
		ArrayList<Coupon> filtered = new ArrayList<Coupon>();
		
		for(Coupon c : allCoupons) {
			if(c.getCategory().equalsIgnoreCase(name))
				filtered.add(c);
		}
		
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
        	out.println("</TR>");
        }
        out.println("</TABLE>");
        out.println("<p><a href='page_browse.jsp'>Back</a></p>");
        out.println("<p><a href='page_home.jsp'>Back to home</a></p>");
        out.println("</body>");
        out.println("</html>");			
	}		

}
