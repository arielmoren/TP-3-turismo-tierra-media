package filters;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import model.User;

@WebFilter(urlPatterns = "*.do")
public class LoggedFilter implements Filter {
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

		User login = (User) ((HttpServletRequest) request).getSession().getAttribute("login");

		if(login != null) {
			chain.doFilter(request, response);
		}else{
			chain.doFilter(request, response);
			//request.setAttribute("flash", "Por favor, ingresa al sistema");
//			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/index.jsp");
//			dispatcher.forward(request, response);
		}
		

	}

}
