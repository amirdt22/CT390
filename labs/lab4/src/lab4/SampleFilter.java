package lab4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter(dispatcherTypes = {DispatcherType.REQUEST }, urlPatterns = { "/*" })
public class SampleFilter implements Filter {


	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		String stuff = request.getParameter("stuff");
		//if they tell us to "go away", raise hell!
		if (stuff != null && stuff.toLowerCase().contains("go") && stuff.toLowerCase().contains("away")) {
			System.err.println("filtering");
			PrintWriter out = response.getWriter();
			out.println("<h1 style='color:red'>NO! YOU GO AWAY!!!!!!</h1>");
		} else {
			// pass the request along the filter chain
			chain.doFilter(request, response);
		}
	}

	@Override
	public void destroy() {
		System.out.println("filter done");
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("filter starting");
	}

}
