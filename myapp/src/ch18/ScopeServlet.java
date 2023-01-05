package ch18;

import java.io.IOException;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ch18/scopeServlet")
public class ScopeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
		request.setAttribute("sum", sum);

		RequestDispatcher dispatcher = request.getRequestDispatcher("el/scope2.jsp");
		dispatcher.forward(request, response);
	}
}
