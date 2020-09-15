package system;

import java.util.Date;

/*
 * This class represents a quote. 
 * A Quote object holds values related from a customer's order.
 * 
 * 
 */
public class Quote {
	private int clientId;
    private double gallonsRequested;
    private Date deliveryDate;
    private Date requestDate;
    private String deliveryLocation;
    private String city;
    private String state;
    private String zip;
    private String deliveryContactName;
    private String deliveryContactPhone;
    private String deliveryContactEmail;
    private double suggestedPrice;
    private double totalAmountDue;
	
    // Default constructor
	public Quote() {
  	
    }
	
	// Constructor (all fields supplied)
	public Quote(int clientId, double gallonsRequested, Date deliveryDate,
			     Date requestDate, String deliveryLocation, String city, String state,
			     String zip, String deliveryContactName, String deliveryContactPhone,
			     String deliveryContactEmail, double suggestedPrice, 
			     double totalAmountDue) {
		
		this.clientId = clientId;
		this.gallonsRequested = gallonsRequested;
		this.deliveryDate = deliveryDate;
		this.requestDate = requestDate;
		this.deliveryLocation = deliveryLocation;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.deliveryContactName = deliveryContactName;
		this.deliveryContactPhone = deliveryContactPhone;
		this.deliveryContactEmail = deliveryContactEmail;
		this.suggestedPrice = suggestedPrice;
		this.totalAmountDue = totalAmountDue;
	}
	
	// Getter methods
	public int getClientId() {
		return clientId;
	}
	
	public double getGallonsRequested() {
		return gallonsRequested;
	}
	
	public Date getDeliveryDate() {
		return deliveryDate;
	}
	
	public Date getRequestDate() {
		return requestDate;
	}
	
	public String getDeliveryLocation() {
		return deliveryLocation;
	}
	
	public String getCity() {
		return city;
	}
	
	public String getState() {
		return state;
	}
	
	public String getZip() {
		return zip;
	}
	
	public String getDeliveryContactName() {
		return deliveryContactName;
	}
	
	public String getDeliveryContactPhone() {
		return deliveryContactPhone;
	}
	
	public String getDeliveryContactEmail() {
		return deliveryContactEmail;
	}
	
	public double getSuggestedPrice() {
		return suggestedPrice;
	}
	
	public double getTotalAmountDue() {
		return totalAmountDue;
	}
	
	// Setter methods
	public void setClientId(int id) {
		this.clientId = id;
	}
	
	public void setGallonsRequested(double gallons) {
		this.gallonsRequested = gallons;
	}
	
	public void setDeliveryDate(Date deliveryDate2) {
		this.deliveryDate = deliveryDate2;
	}
	
	public void setRequestDate(Date date) {
		this.requestDate = date;
	}
	
	public void setDeliveryLocation(String location) {
		this.deliveryLocation = location;
	}
	
	public void setCity(String city) {
		this.city = city;
	}
	
	public void setState(String state) {
		this.state = state;
	}
	
	public void setZip(String zip) {
		this.zip = zip;
	}
	
	public void setDeliveryContactName(String name) {
		this.deliveryContactName = name;
	}
	
	public void setDeliveryContactPhone(String phone) {
		this.deliveryContactPhone = phone;
	}
	
	public void setDeliveryContactEmail(String email) {
		this.deliveryContactEmail = email;
	}
	
	public void setSuggestedPrice(double price) {
		this.suggestedPrice = price;
	}
	
	public void setTotalAmountDue(double cost) {
		this.totalAmountDue = cost;
	}
}
