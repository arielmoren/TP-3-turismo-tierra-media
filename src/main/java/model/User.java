package model;


import java.util.HashMap;
import java.util.Map;

import utils.Crypt;

public class User {

	private Integer id;
	private String username, password;
	private Boolean admin;
	private Integer coins;
	private Double time;
	private String type;
	private Boolean activ;
	
	private Map<String, String> errors;
	
	public User( String username, String password) {
		this.username = username;
		this.password = password;
	}
	
	public User(Integer id, String username, Integer coins, Double time,String type) {
		this.id = id;
		this.username = username;
		this.coins = coins;
		this.time = time;
		this.type = type;
	}
	public User(Integer id, String username, String password, Integer coins, Double time, Boolean admin,String type, Boolean activ) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.coins = coins;
		this.time = time;
		this.admin = admin;
		this.type = type;
		this.activ = activ;
	}
	
	
	public boolean isValid() {
		validate();
		return errors.isEmpty();
	}
	
	public void validate() {
		errors = new HashMap<String, String>();

		if (coins <= 0) {
			errors.put("coins", "Debe ser positivo");
		}
		if (time <= 0) {
			errors.put("time", "Debe ser positivo");
		}
		
		if(!type.equals("aventura") && !type.equals("paisaje") && !type.equals("degustacion")) {
			errors.put("type", "Solo se permiten genero de: Aventura, Degustacion o Paisaje");
		}
		
	}
	
	public Map<String, String> getErrors() {
		return errors;
	}
	
	public void addToItinerary(Attraction attraction) {
		this.coins -= attraction.getCost();
		this.time -= attraction.getDuration();
		// TODO agregar a su lista
	}

	public void removeToItinerary(Attraction attraction) {
		this.coins += attraction.getCost();
		this.time += attraction.getDuration();
		// TODO agregar a su lista
	}
	
	public boolean canAfford(Attraction attraction) {
		return attraction.getCost() <= this.coins;
	}

	public boolean canAttend(Attraction attraction) {
		return attraction.getDuration() <= this.time;
	}

	public boolean checkPassword(String password) {
		// this.password en realidad es el hash del password
		return Crypt.match(password, this.password);
	}

	public Boolean getAdmin() {
		return admin;
	}

	public Integer getCoins() {
		return coins;
	}

	public Integer getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}

	public Double getTime() {
		return time;
	}

	public String getUsername() {
		return username;
	}
	
	public String getType() {
		return type;
	}
	
	
	public Boolean isAdmin() {
		return admin;
	}

	public boolean isNull() {
		return false;
	}

	
	public void setActiv(Boolean activ) {
		this.activ = activ;
	}
	
	public Boolean getActiv() {
		return activ;
	}
	
	public void setAdmin(Boolean admin) {
		this.admin = admin;
	}

	public void setCoins(Integer coins) {
		this.coins = coins;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public void setPassword(String password) {
		this.password = Crypt.hash(password);
	}

	public void setTime(Double time) {
		this.time = time;
	}

	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setType(String type) {
		this.type = type;
	}
	
	
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", admin=" + admin + ", genero=" + type + "avctivo=" + activ + "]";
	}
	

	
}
