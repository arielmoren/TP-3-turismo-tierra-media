package services;

import java.util.List;

import model.Attraction;
import persistence.AttractionDAO;
import persistence.commons.DAOFactory;

public class AttractionService {

	public List<Attraction> list() {
		return DAOFactory.getAttractionDAO().findAll();
	}

	public List<Attraction> listByLogin(String genero) {
		return DAOFactory.getAttractionDAO().listByLogin(genero);
	}
	
	public List<Attraction> listNoType(String genero) {
		return DAOFactory.getAttractionDAO().listNoType(genero);
	}
	
	public List<Attraction> listByActiv(){
		return DAOFactory.getAttractionDAO().listByActiv();
	}
	
	public List<Attraction> listByDesactiv(){
		return DAOFactory.getAttractionDAO().listByDesactiv();
	}
	
	
	public Attraction create(String name, Integer cost, Double duration, Integer capacity,String type, String description) {

		Attraction attraction = new Attraction(-1, name, cost, duration, capacity, type , true,description);

		if (attraction.isValid()) {
			AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
			attractionDAO.insert(attraction);
			// XXX: si no devuelve "1", es que hubo más errores
		}

		return attraction;
	}

	public Attraction update(Integer id, String name, Integer cost, Double duration, Integer capacity, String type,String description) {

		AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
		Attraction attraction = attractionDAO.find(id);

		attraction.setName(name);
		attraction.setCost(cost);
		attraction.setDuration(duration);
		attraction.setCapacity(capacity);
		attraction.setType(type);
		attraction.setDescription(description);

		if (attraction.isValid()) {
			attractionDAO.update(attraction);
			// XXX: si no devuelve "1", es que hubo más errores
		}

		return attraction;
	}

	public void delete(Integer id) {
		Attraction attraction = new Attraction(id, null, null, null, null,null,null,null);

		AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
		attractionDAO.delete(attraction);
	}

	public Attraction find(Integer id) {
		AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
		return attractionDAO.find(id);
	}
	
	
	public void setDesactiv(Integer id) {
		AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
		Attraction attraction = attractionDAO.find(id);
		
		attraction.setActiv(false);
		attractionDAO.setActiv(attraction);
	}
	
	public void setActiv(Integer id) {
		AttractionDAO attractionDAO = DAOFactory.getAttractionDAO();
		Attraction attraction = attractionDAO.find(id);
		
		attraction.setActiv(true);
		attractionDAO.setActiv(attraction);
	}
	

}
