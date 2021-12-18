package persistence;

import java.util.List;

import model.User;
import persistence.commons.GenericDAO;

public interface UserDAO extends GenericDAO<User> {

	public abstract User findByUsername(String username);
	
	public abstract List<User> findByActiv();
	
	public abstract List<User> findByDesactiv();
	
	public abstract int setActiv(User user);
}
