package ch18;

import java.io.*;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

@MultipartConfig
@WebServlet("/ch18/driveServlet")
public class DriveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String uploadPath;
	
	@Override
	public void init() throws ServletException {
		super.init();
		uploadPath = getServletContext().getRealPath("upload");
		System.out.println(uploadPath);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String[] fileList = new File(uploadPath).list();
		request.setAttribute("fileList", fileList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/view/drive.jsp");
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String method = request.getParameter("_method"); // hidden
		if ("DELETE".equalsIgnoreCase(method)) {
			doDelete(request, response);
			return;
		}

		Part filePart = request.getPart("file");
		String fileName = filePart.getSubmittedFileName();
		filePart.write(new File(uploadPath, fileName).getPath());
		response.sendRedirect("./driveServlet");
	}

	@Override
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fileName = request.getParameter("name");
		new File(uploadPath, fileName).delete();
		response.sendRedirect("./driveServlet");
	}
}
