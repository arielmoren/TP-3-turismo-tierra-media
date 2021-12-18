package controller.attractions;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Attraction;
import model.User;
import services.AttractionService;

@WebServlet("/attractions/create.admin")
public class CreateAttractionServlet extends HttpServlet {

	private static final long serialVersionUID = 3455721046062278592L;
	private AttractionService attractionService;

	@Override
	public void init() throws ServletException {
		super.init();
		this.attractionService = new AttractionService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User login = (User) req.getSession().getAttribute("login");		
		if(login!=null && login.isAdmin()) {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/attractions/create.jsp");
			dispatcher.forward(req, resp);
			
		}else{
			resp.sendRedirect("/tierraMedia/index.jsp");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User login = (User) req.getSession().getAttribute("login");		
		if(login!=null && login.isAdmin()) {
			String name = req.getParameter("name");
			Integer cost = Integer.parseInt(req.getParameter("cost"));
			Double duration = Double.parseDouble(req.getParameter("duration"));
			Integer capacity = Integer.parseInt(req.getParameter("capacity"));
			String type = req.getParameter("type");
			String description = "con descripcion";//req.getParameter("description");
			
			Attraction attraction = attractionService.create(name, cost, duration, capacity,type,description);
			if (attraction.isValid()) {
				resp.sendRedirect("/tierraMedia/admin/index.admin");
			} else {
				req.setAttribute("attraction", attraction);
	
				RequestDispatcher dispatcher = getServletContext()
						.getRequestDispatcher("/views/attractions/create.jsp");
				dispatcher.forward(req, resp);
			}
		}else{
			resp.sendRedirect("/tierraMedia/index.jsp");
		}
	}

}
