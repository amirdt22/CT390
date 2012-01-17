package edu.drexel.goodwin.cst.ct390.lab1;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ParameterExampleServlet
 */
@WebServlet("/ParameterExampleServlet")
public class ParameterExampleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		handlePostOrGet(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		handlePostOrGet(request, response);
	}
	
	private void handlePostOrGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getOutputStream().println("hi, here are the parameters sent:");
		Enumeration<String> parameterNames = request.getParameterNames();
		while (parameterNames.hasMoreElements()) {
			String parameterName = (String) parameterNames.nextElement();
			String[] parameterValues = request.getParameterValues(parameterName);
			if(parameterValues.length == 1) {
				response.getOutputStream().println(parameterName + " just has one value: " + request.getParameter(parameterName));
			} else if (parameterValues.length > 1) {
				response.getOutputStream().println(parameterName + " has " + parameterValues.length + " values: ");
				for (String value : parameterValues) {
					response.getOutputStream().println(" * " + value);
				}
				
			}
		}
	}

}
