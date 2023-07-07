package lands;

public class Lands {

	//Land class private attributes
	private String landID;
	private String location;
	private String size;
	private String price;
	private String owner;
	private String ownerContact;
	private String description;
	
	//Overloaded constructor
	public Lands(String landID, String location, String size, String price, String owner, String ownerContact, String description) {

		this.landID = landID;
		this.location = location;
		this.size = size;
		this.price = price;
		this.owner = owner;
		this.ownerContact = ownerContact;
		this.description = description;
	}

	//Getters and Setters
	
	public String getLandID() {
		return landID;
	}


	public void setLandID(String landID) {
		this.landID = landID;
	}


	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public String getSize() {
		return size;
	}


	public void setSize(String size) {
		this.size = size;
	}


	public String getPrice() {
		return price;
	}


	public void setPrice(String price) {
		this.price = price;
	}


	public String getOwner() {
		return owner;
	}


	public void setOwner(String owner) {
		this.owner = owner;
	}


	public String getOwnerContact() {
		return ownerContact;
	}


	public void setOwnerContact(String ownerContact) {
		this.ownerContact = ownerContact;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}
	
}
