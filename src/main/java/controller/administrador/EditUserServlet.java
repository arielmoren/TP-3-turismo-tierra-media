package controller.administrador;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import services.UserService;

@WebServlet("/admin/editUser.admin")
public class EditUserServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = -6965714781549256436L;
	private UserService userService;
	@Override
	public void init() throws ServletException {
		super.init();
		this.userService = new UserService();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			Integer id = Integer.parseInt(req.getParameter("id"));
	
			User user = UserService.find(id);
			req.setAttribute("users", user);
	
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/admin/edit.jsp");
			dispatcher.forward(req, resp);
		

	}

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User login = (User) req.getSession().getAttribute("login");		
		if(login!=null && login.isAdmin()) {
			
			Integer id = Integer.parseInt(req.getParameter("id"));
			String username = req.getParameter("username");
			Integer coins = Integer.parseInt(req.getParameter("coins"));
			Double time = Double.parseDouble(req.getParameter("time"));
			String type = req.getParameter("type");
			String administrador = req.getParameter("admin");
			Boolean admin;
			if(administrador.equals("SI")) {
				admin= true;
			}else {
				admin= false;
			}
//			(Integer id, String username, String password, Integer coins, Double time, Boolean admin,String type, Boolean activ)
			User user = new User(id, username,username, coins, time,admin, type,true);
			if(user.isValid()) {
				userService.update(user);
				resp.sendRedirect("/tierraMedia/admin/index.admin");
			}else {
			req.setAttribute("users", user);
	
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/admin/edit.jsp");
				dispatcher.forward(req, resp);
			}
		}else{
			resp.sendRedirect("/tierraMedia/index.jsp");
		}
		
		
	}
}
