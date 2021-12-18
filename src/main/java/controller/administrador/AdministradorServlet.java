package controller.administrador;

import java.io.IOException;

import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Attraction;
import model.User;
import services.UserService;
import services.AttractionService;


@WebServlet("/admin/index.admin")
public class AdministradorServlet extends HttpServlet implements Servlet {

	private static final long serialVersionUID = -7536746585997872594L;
	private UserService userService;
	private AttractionService attractionService;
	
	@Override
	public void init() throws ServletException {
		super.init();
		this.userService = new UserService();
		this.attractionService = new AttractionService();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User login = (User) req.getSession().getAttribute("login");		
		if(login!=null && login.isAdmin()) {
			
		
			List<Attraction> attractionsAct = attractionService.listByActiv();
			req.getSession().setAttribute("attractionsAct", attractionsAct);
			
			List<Attraction> attractionsDes = attractionService.listByDesactiv();
			req.getSession().setAttribute("attractionsDes", attractionsDes);
			
			
			List<User> usersAct = userService.listActiv();
			req.getSession().setAttribute("usersAct", usersAct);
			
			List<User> usersDes = userService.listDesactiv();
			req.getSession().setAttribute("usersDes", usersDes);
			
			
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/admin/index.jsp");
			dispatcher.forward(req, resp);
		
		}else{
			resp.sendRedirect("/tierraMedia/index.jsp");
		}
	}

}
