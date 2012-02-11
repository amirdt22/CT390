package lab4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UppercasingServlet")
public class UppercasingServlet extends HttpServlet {
	
	private static final long serialVersionUID = -5874110590804545538L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("uppercasing running");

		PrintWriter out = response.getWriter();
		out.print("Your text in UPPERCASE is: ");
		out.print(request.getParameter("stuff").toUpperCase());
		out.print(" <a href='./'>back</a>");
		
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/WEB-INF/upperForm.html");
		rd.include(request, response);
	}

}
