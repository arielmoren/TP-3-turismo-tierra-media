package model;

public class Itinerary {
	private Integer id;
	private Integer userId;
	private Integer promotionId;
	private Integer attractionId; 

	public Itinerary() {
		// TODO Auto-generated constructor stub
	}
	
	public Itinerary(Integer id,Integer userId, Integer promotionId, Integer attractionId) {
		this.id = id;
		this.userId = userId;
		this.promotionId = promotionId;
		this.attractionId = attractionId;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getPromotionId() {
		return promotionId;
	}

	public void setPromotionId(Integer promotionId) {
		this.promotionId = promotionId;
	}

	public Integer getAttractionId() {
		return attractionId;
	}

	public void setAttractionId(Integer attractionId) {
		this.attractionId = attractionId;
	}
	

}
