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

@WebServlet("/attractions/edit.admin")
public class EditAttractionServlet extends HttpServlet {

	private static final long serialVersionUID = 7598291131560345626L;
	private AttractionService attractionService;

	@Override
	public void init() throws ServletException {
		super.init();
		this.attractionService = new AttractionService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Integer id = Integer.parseInt(req.getParameter("id"));
		Attraction attraction = attractionService.find(id);
		req.setAttribute("attraction", attraction);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/attractions/edit.jsp");
		dispatcher.forward(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User login = (User) req.getSession().getAttribute("login");		
		if(login!=null && login.isAdmin()) {			
			Integer id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("name");
			Integer cost = Integer.parseInt(req.getParameter("cost"));
			Double duration = Double.parseDouble(req.getParameter("duration"));
			Integer capacity = Integer.parseInt(req.getParameter("capacity"));
			String type = req.getParameter("type");
			String description = req.getParameter("description");
			
				
			Attraction attraction = new Attraction(id, name, cost, duration, capacity, type, true, description);
			if (attraction.isValid()) {
				
				attractionService.update(id, name, cost, duration, capacity, type, description);
				resp.sendRedirect("/tierraMedia/admin/index.admin");
			} else {
				
				req.setAttribute("attraction", attraction);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/attractions/edit.jsp");
				dispatcher.forward(req, resp);
			}
		}else{
			resp.sendRedirect("/tierraMedia/index.jsp");
		}
		
	}
}
