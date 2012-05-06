

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
			displayCoupon(out, "Travel");
		}
		else if(name.equals("Food")) {
			displayCoupon(out, "Food");
		}
		else if(name.equals("Moving")) {
			displayCoupon(out, "Moving");
		}
		else if(name.equals("Health")) {
			displayCoupon(out, "Health");
		}
		else if(name.equals("Photography")) {
			displayCoupon(out, "Photography");
		}
		else if(name.equals("Footwear")) {
			displayCoupon(out, "Footwear");
		}
		else if(name.equals("Magazine")) {
			displayCoupon(out, "Magazine");
		}
		else if(name.equals("Home Decorating")) {
			displayCoupon(out, "Home Decorating");
		}
		else {
			displayCoupon(out, "Other");		
		}	
	}
	
	public void displayCoupon(PrintWriter out, String name) {
		ArrayList<Coupon> coupons = DBOperation.getCouponList();
		
		for(Coupon c : coupons) {
			if(!c.category.equalsIgnoreCase(name))
				coupons.remove(c);
		}
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Coupons</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<TABLE cellpadding=\"15\" border=\"1\" style=\"background-color: #ffffcc;\">");
		
        for (Coupon c : coupons) {
        	out.println("<TR>");
        	out.println("<TD>" + c.id + "</TD>");
        	out.println("<TD>" + c.title + "</TD>");
        	out.println("<TD>" + c.createDate + "</TD>");
        	out.println("<TD>" + c.expireDate+ "</TD>");
        	out.println("<TD>" + c.quantity + "</TD>");
        	out.println("<TD>" + c.sold + "</TD>");
        	out.println("<TD>" + c.price + "</TD>");
        	out.println("<TD>" + c.category + "</TD>");
        	out.println("</TR>");
        }
        out.println("</TABLE>");
        out.println("<a href='page_home.jsp'>Back</a>");
        out.println("</body>");
        out.println("</html>");			
	}		

}
