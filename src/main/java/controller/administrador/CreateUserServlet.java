package controller.administrador;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Attraction;
import model.User;
import services.UserService;


@WebServlet("/admin/create.admin")
public class CreateUserServlet extends HttpServlet{


	private static final long serialVersionUID = -7122367309772595305L;
	private UserService userService;

	@Override
	public void init() throws ServletException {
		super.init();
		this.userService = new UserService();
	}
	
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User login = (User) req.getSession().getAttribute("login");		
		if(login!=null && login.isAdmin()) {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/admin/create.jsp");
			dispatcher.forward(req, resp);
		}else{
			resp.sendRedirect("/tierraMedia/index.jsp");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User login = (User) req.getSession().getAttribute("login");		
		if(login!=null && login.isAdmin()) {
			
			String username = req.getParameter("username");
			Integer cost = Integer.parseInt(req.getParameter("coins"));
			Double time = Double.parseDouble(req.getParameter("time"));
			String type = req.getParameter("type");
			String pass = req.getParameter("password");
			//			
			User user = userService.create(username,pass,true ,cost, time,type);
			if (user.isValid()) {
				resp.sendRedirect("/tierraMedia/admin/index.admin");
			} else {
				req.setAttribute("user", user);	
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/admin/create.jsp");
				dispatcher.forward(req, resp);
			}
		}else{
			resp.sendRedirect("/tierraMedia/index.jsp");
		}
	}







}
