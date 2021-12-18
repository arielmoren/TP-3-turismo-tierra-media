package controller.administrador;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import services.UserService;

@WebServlet("/admin/delete.admin")
public class DeleteUserServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 8138364732771447924L;
	private UserService userService;
	
	public void init() throws ServletException {
		super.init();
		this.userService = new UserService();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		User login = (User) req.getSession().getAttribute("login");		
		if(login!=null && login.isAdmin()) {
			
			Integer id = Integer.parseInt(req.getParameter("id"));
	
			userService.setActive(id);
	
			resp.sendRedirect("/tierraMedia/admin/index.admin");
	
		}else{
			resp.sendRedirect("/tierraMedia/index.jsp");
		}	
	}
}
