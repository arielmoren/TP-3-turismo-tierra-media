package controller.attractions;

import java.io.IOException;
import java.util.Map;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import persistence.commons.DAOFactory;
import services.BuyAttractionService;
import services.LoginService;
import services.UserService;

@WebServlet("/attractions/buy.do")
public class BuyAttractionServlet extends HttpServlet {

	private static final long serialVersionUID = 3455721046062278592L;
	private BuyAttractionService buyAttractionService;
	private UserService userService;
	private LoginService loginService;
	
	@Override
	public void init() throws ServletException {
		super.init();
		this.buyAttractionService = new BuyAttractionService();
		this.userService = new UserService();
		loginService = new LoginService();

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		User login = (User) req.getSession().getAttribute("login");	
		if(login!=null) {
			
			User user = userService.findByUsername(login.getUsername()); 
			
			Integer userId = user.getId();
			Integer attractionId = Integer.parseInt(req.getParameter("id"));
			
			Map<String, String> errors = buyAttractionService.buy(userId,attractionId);
			
			if (errors.isEmpty()) {
				req.removeAttribute("login");
				req.setAttribute("login",user);
				
				req.setAttribute("flashBy", "¡Gracias por comprar!");
//				resp.sendRedirect("/tierraMedia/attractions/index.jsp");
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/attractions/index.jsp");
				dispatcher.forward(req, resp);

			} else {
				req.setAttribute("errors", errors);
				req.setAttribute("flashBy", "No ha podido realizarse la compra");
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/attractions/index.jsp");
				dispatcher.forward(req, resp);
			}
		}else {
			resp.sendRedirect("/tierraMedia/login");
		}
	}
}
