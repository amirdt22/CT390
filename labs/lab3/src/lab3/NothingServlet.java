package lab3;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

/**
 * Servlet implementation class NothingServlet
 */
@WebServlet("/NothingServlet")
public class NothingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private Logger logger = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NothingServlet() {
        super();
        // TODO Auto-generated constructor stub
        logger = Logger.getLogger("NothingServlet");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		logger.info("hi");

		response.setContentType("text/html");
		response.getWriter().print("HI!");
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/banner.jsp");
		rd.include(request, response);
		
		response.getWriter().print("BYE!");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().print("hi there");
		String destination = "/WEB-INF/private.jsp";
		RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
		rd.forward(request, response);
		//response.getWriter().print("bye bye");
	}

}
