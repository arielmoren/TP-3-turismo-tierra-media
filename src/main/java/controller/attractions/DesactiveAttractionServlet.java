package controller.attractions;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import services.AttractionService;
import services.ItineraryService;
import services.UserService;

@WebServlet("/attractions/desactive.admin")
public class DesactiveAttractionServlet extends HttpServlet {

	private static final long serialVersionUID = 1537949074766873118L;
	private AttractionService attractionService;
	private ItineraryService itineraryService;
	private UserService userService;
	
	@Override
	public void init() throws ServletException {
		super.init();
		this.attractionService = new AttractionService();
		this.itineraryService = new ItineraryService();
		this.userService = new UserService();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User login = (User) req.getSession().getAttribute("login");		
		if(login!=null && login.isAdmin()) {
			Integer id = Integer.parseInt(req.getParameter("id"));
	
			attractionService.setDesactiv(id);
			itineraryService.setItinerary(id);
			User user = userService.findByUsername(login.getUsername());
//			resp.sendRedirect("/tierraMedia/admin/index.admin");
			req.removeAttribute("login");
			req.setAttribute("login",user);
			
			req.setAttribute("flashBy", "¡Gracias por comprar!");
//			resp.sendRedirect("/tierraMedia/attractions/index.jsp");
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/admin/index.admin");
			dispatcher.forward(req, resp);
		}else{
			resp.sendRedirect("/tierraMedia/index.jsp");
		}
	}


}