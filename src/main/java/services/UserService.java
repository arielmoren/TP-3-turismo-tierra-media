package services;

import java.util.List;

import model.Attraction;
import model.User;
import persistence.AttractionDAO;
import persistence.UserDAO;
import persistence.commons.DAOFactory;

public class UserService {
	
	public List<User> list() {
		return DAOFactory.getUserDAO().findAll();
	}
	
	public List<User> listActiv() {
		return DAOFactory.getUserDAO().findByActiv();
	}
	
	
	public List<User> listDesactiv() {
		return DAOFactory.getUserDAO().findByDesactiv();
	}
	
	
	public User update(User editUser) {
		UserDAO userDAO = DAOFactory.getUserDAO();
		User user = userDAO.find(editUser.getId());
		
		user.setUsername(editUser.getUsername());
		user.setCoins(editUser.getCoins());
		user.setTime(editUser.getTime());
		user.setType(editUser.getType());
		user.setAdmin(editUser.getAdmin());
		if (user.isValid()) {
			userDAO.update(user);
		}

		return user;
	}
	
	public static User find(Integer id) {
		UserDAO userDAO = DAOFactory.getUserDAO();
		return userDAO.find(id);
	}
	
	public void delete(Integer id) {
		UserDAO userDAO = DAOFactory.getUserDAO();
		User user = userDAO.find(id);
		userDAO.delete(user);
	}
	
	public void setActive(Integer id) {
		UserDAO userDAO = DAOFactory.getUserDAO();
		User user = userDAO.find(id);
		
		user.setActiv(true);
		
		userDAO.setActiv(user);
	}
	
	
	public void setDesactive(Integer id) {
		UserDAO userDAO = DAOFactory.getUserDAO();
		User user = userDAO.find(id);
		
		user.setActiv(false);
		
		userDAO.setActiv(user);
	}
	
	public User create(String username, String password,boolean admin, int coins, double time, String type) {
		UserDAO userDAO = DAOFactory.getUserDAO();
		User user = new User(1,username,password,coins,time,admin,type,true);
		user.setPassword(password);
		if(user.isValid()) {
			userDAO.insert(user);			
		}
		
		return user;
	}
	
	public User findByUsername(String username) {
		UserDAO userDAO = DAOFactory.getUserDAO();
	
		User user = userDAO.findByUsername(username);
		
		return user;
	}
	
	
}
