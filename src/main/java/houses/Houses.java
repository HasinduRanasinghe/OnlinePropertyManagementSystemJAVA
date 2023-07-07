package houses;

public class Houses {

	private String houseID;
	private String location;
	private String size;
	private String price;
	private String owner;
	private String ownerContact;
	private String description;
	
	
	public Houses(String houseID, String location, String size, String price, String owner, String ownerContact, String description) {
		
		this.houseID = houseID;
		this.location = location;
		this.size = size;
		this.price = price;
		this.owner = owner;
		this.ownerContact = ownerContact;
		this.description = description;
	}


	public String getHouseID() {
		return houseID;
	}


	public void setHouseID(String houseID) {
		this.houseID = houseID;
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
