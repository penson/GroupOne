package groupone;

public class Coupon {
	private String id;
	private String title;
	private String createDate;
	private String expireDate;
	private String quantity;
	private String price;
	private String category;
	private String sold;
	private String vendor;
	
	public Coupon() {
		
	}

	String getVendor() {
		return vendor;
	}

	void setVendor(String vendor) {
		this.vendor = vendor;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getExpireDate() {
		return expireDate;
	}

	public void setExpireDate(String expireDate) {
		this.expireDate = expireDate;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getSold() {
		return sold;
	}

	public void setSold(String sold) {
		this.sold = sold;
	}
}
