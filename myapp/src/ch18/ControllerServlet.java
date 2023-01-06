package ch18;

import java.io.IOException;
import java.util.stream.IntStream;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ch18/controllerServlet")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("range", IntStream.range(1, 11).toArray());
		request.setAttribute("sum", IntStream.rangeClosed(1, 10).sum());

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/template.jsp");
		dispatcher.forward(request, response);
	}
}
