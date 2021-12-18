package controller.attractions;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Attraction;
import model.User;
import services.AttractionService;
import services.UserService;

@WebServlet("/attractions/index.jsp")
public class ListAttractionsServlet extends HttpServlet implements Servlet {

	private static final long serialVersionUID = -8346640902238722429L;
	private AttractionService attractionService;
	private UserService userService;
	@Override
	public void init() throws ServletException {
		super.init();
		this.attractionService = new AttractionService();
		this.userService = new UserService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		User login = (User) req.getSession().getAttribute("login");
		
		if(login!=null) {
			List<Attraction> attractions = attractionService.listByLogin(login.getType());

			req.setAttribute("attractions", attractions);
			
//			User user = userService.findByUsername(login.getUsername());
//			req.removeAttribute("login");
//			req.setAttribute("login",user);
			
			
		}else {
			List<Attraction> attractions = attractionService.listByActiv();
			req.setAttribute("attractions", attractions);
		}
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/attractions/index.jsp");
		dispatcher.forward(req, resp);
	}
}
