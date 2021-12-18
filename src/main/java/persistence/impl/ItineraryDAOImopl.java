package persistence.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.Attraction;
import model.Itinerary;
import persistence.AttractionDAO;
import persistence.ItineraryDAO;
import persistence.commons.ConnectionProvider;
import persistence.commons.DAOFactory;
import persistence.commons.MissingDataException;

public class ItineraryDAOImopl implements ItineraryDAO {
	
	
	@Override
	public int addItineraryAtraction(Integer userId, Integer attractionId) {
		try {
			String sql = "INSERT INTO itinerarys (userid, attractionsid) VALUES (?, ?)";
			Connection conn = ConnectionProvider.getConnection();

			PreparedStatement statement = conn.prepareStatement(sql);
			int i = 1;
			statement.setInt(i++, userId);
			statement.setInt(i++, attractionId);
			int rows = statement.executeUpdate();

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}
	
	@Override
	public int removeItinerary(Integer userId, Integer attractionId) {
		try {
			String sql = "DELETE FROM itinerarys WHERE attractionsid = ? AND userid = ?";
			Connection conn = ConnectionProvider.getConnection();

			PreparedStatement statement = conn.prepareStatement(sql);

			statement.setInt(1, attractionId);
			statement.setInt(2, userId);
			
			int rows = statement.executeUpdate();

			return rows;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}
	
	@Override
	public List<Itinerary> listAttraction(Integer attractionId) {
		try {
			String sql = "SELECT * FROM itinerarys WHERE attractionsid= ?";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, attractionId);
			ResultSet resultados = statement.executeQuery();
			List<Itinerary> itinerary = new LinkedList<Itinerary>();
				
			while (resultados.next()) {
				itinerary.add(toItinerary(resultados));				
			}

			return itinerary;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}
	
	public List<Itinerary> listItinerary(Integer userId) {
		try {
			String sql = "SELECT * FROM itinerarys WHERE userid = ?";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setInt(1, userId);
			
			ResultSet resultados = statement.executeQuery();

			List<Itinerary> itinerary = new LinkedList<Itinerary>();
	
			
			while (resultados.next()) {
				itinerary.add(toItinerary(resultados));				
			}

			return itinerary;
		} catch (Exception e) {
			throw new MissingDataException(e);
		}
	}

	private Itinerary toItinerary(ResultSet attractionRegister) throws SQLException {
		return new Itinerary(attractionRegister.getInt(1),attractionRegister.getInt(2),attractionRegister.getInt(3),attractionRegister.getInt(4));
	}
	
	@Override
	public Itinerary find(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Itinerary> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countAll() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(Itinerary t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Itinerary t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Itinerary t) {
		// TODO Auto-generated method stub
		return 0;
	}

	

	

}
