package controller.attractions;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import services.AttractionService;

@WebServlet("/attractions/active.admin")
public class ActiveAttractionServlet extends HttpServlet {

	private static final long serialVersionUID = 1537949074766873118L;
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
			Integer id = Integer.parseInt(req.getParameter("id"));
	
			attractionService.setActiv(id);
	
			resp.sendRedirect("/tierraMedia/admin/index.admin");
		}else{
			resp.sendRedirect("/tierraMedia/index.jsp");
		}
	}


}