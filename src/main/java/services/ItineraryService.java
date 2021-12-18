package services;

import java.util.LinkedList;
import java.util.List;

import model.Attraction;
import model.Itinerary;
import model.User;
import persistence.AttractionDAO;
import persistence.UserDAO;
import persistence.commons.DAOFactory;

public class ItineraryService {
	
	public List<Attraction> listAttractions(Integer userId){
		
		AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
		List<Itinerary> itineraries = DAOFactory.getItineraryDAO().listItinerary(userId);
		List<Attraction> attractions = new LinkedList<Attraction>();
		
		for (Itinerary itinerary : itineraries) {
			attractions.add(attractionDAO.find(itinerary.getAttractionId()));
		}
		
		return attractions;
	}
	
	public void setItinerary(Integer attractionId) {
		
		List<Itinerary> itineraries = DAOFactory.getItineraryDAO().listAttraction(attractionId);
		UserDAO userDAO = DAOFactory.getUserDAO();
		AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
		Attraction attraction = attractionDAO.find(attractionId);
		
		User user = null;
		
		for (Itinerary itinerary : itineraries) {
			user=userDAO.find(itinerary.getUserId());
			user.removeToItinerary(attraction);
			userDAO.update(user);
			this.removeItinerari(user.getId(), attraction.getId());
		}
		
		
		
	}
	
	public void removeItinerari(Integer userId, Integer attractionId) {
		DAOFactory.getItineraryDAO().removeItinerary(userId, attractionId);
		
	}
	
	public void addItinerariAttraction(Integer userId, Integer attractionId) {
		DAOFactory.getItineraryDAO().addItineraryAtraction(userId, attractionId);
		
	}
	
}
