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
		ArrayList<Coupon> coupons = (ArrayList<Coupon>)request.getAttribute("coupons");
		System.out.println(coupons);
		request.getRequestDispatcher("/page_invoice.jsp").forward(request, response);
	}

}
