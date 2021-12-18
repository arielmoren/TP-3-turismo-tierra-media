package persistence.commons;

import model.Itinerary;
import persistence.AttractionDAO;
import persistence.ItineraryDAO;
import persistence.UserDAO;
import persistence.impl.AttractionDAOImpl;
import persistence.impl.ItineraryDAOImopl;
import persistence.impl.UserDAOImpl;

public class DAOFactory {

	public static UserDAO getUserDAO() {
		return new UserDAOImpl();
	}
	
	public static AttractionDAO getAttractionDAO() {
		return new AttractionDAOImpl();
	}
	
	public static ItineraryDAO getItineraryDAO() {
		return new ItineraryDAOImopl();
	}
}
