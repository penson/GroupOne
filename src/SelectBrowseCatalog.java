

import java.io.IOException;
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
		if(name.equals("Travel")) {
			System.out.println("Travel clicked");
			request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
		}
		else if(name.equals("Food")) {
			System.out.println("Food clicked");
			request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
		}
		else if(name.equals("Moving")) {
			System.out.println("Moving clicked");
			request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
		}
		else if(name.equals("Health")) {
			System.out.println("Health clicked");
			request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
		}
		else if(name.equals("Photography")) {
			System.out.println("Photography clicked");
			request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
		}
		else if(name.equals("Footwear")) {
			System.out.println("Footwear clicked");
			request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
		}
		else if(name.equals("Magazine")) {
			System.out.println("Magazine clicked");
			request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
		}
		else if(name.equals("Home Decorating")) {
			System.out.println("Home Decorating clicked");
			request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
		}
		else {
			System.out.println("Other clicked");
			request.getRequestDispatcher("/page_displayCoupon.jsp").forward(request, response);
		}
	}

}
