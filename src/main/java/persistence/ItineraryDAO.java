package persistence;

import java.util.List;

import model.Attraction;
import model.Itinerary;
import persistence.commons.GenericDAO;

public interface ItineraryDAO extends GenericDAO<Itinerary>{
	
	public abstract List<Itinerary> listItinerary(Integer userId);

	public abstract List<Itinerary> listAttraction(Integer attractionId);
	
	public abstract int removeItinerary(Integer userId, Integer attractionId);
	
	public abstract int addItineraryAtraction(Integer userId,Integer attractionId);
}
