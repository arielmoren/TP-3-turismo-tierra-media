package controller.itinerarys;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.Servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Attraction;
import model.Itinerary;
import model.User;
import services.AttractionService;
import services.ItineraryService;

@WebServlet("/itinerary/index.jsp")
public class ListItineraryServlet extends HttpServlet implements Servlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2726617651207269894L;
	ItineraryService itineraryService;
	AttractionService attractionService;
	
	@Override
	public void init() throws ServletException{
		this.attractionService = new AttractionService();
		this.itineraryService = new ItineraryService();
	}
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			User login = (User) req.getSession().getAttribute("login");
			
			if(login!=null) {

				List<Attraction> attractionItinerary = itineraryService.listAttractions(login.getId()); 
							
				req.setAttribute("attractionItinerary", attractionItinerary);
			}else {
				List<Attraction> attractions = attractionService.listByActiv();
				req.setAttribute("attractions", attractions);
			}
			
		RequestDispatcher dispacher = getServletContext().getRequestDispatcher("/views/itinerary/index.jsp");
		dispacher.forward(req, resp);
	}
	
}
