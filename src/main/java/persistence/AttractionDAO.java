package persistence;

import java.util.List;

import model.Attraction;
import model.User;
import persistence.commons.GenericDAO;

public interface AttractionDAO extends GenericDAO<Attraction> {
	
	public abstract List<Attraction> listByLogin( String genero);
	
public abstract List<Attraction> listByActiv();
	
	public abstract List<Attraction> listByDesactiv();
	
	public abstract List<Attraction> listNoType(String type);
	
	
	public abstract int setActiv(Attraction attraction);
}
