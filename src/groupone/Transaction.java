package groupone;

public class Transaction {
	private String idTransaction;
	private String idTransAcct;
	private String idTransCoup;
	private String date;
	private String type;
	private String email;
	
	public Transaction() {
		
	}
	
	public String getIdTransaction() {
		return idTransaction;
	}
	
	public void setIdTransaction(String s) {
		idTransaction = s;
	}
	
	public String getIdTransAcct() {
		return idTransAcct;
	}
	
	public void setIdTransAcct(String s) {
		idTransAcct = s;
	}
	
	public String getIdTransCoup() {
		return idTransCoup;
	}
	
	public void setIdTransCoup(String s) {
		idTransCoup = s;
	}
	
	public String getDate() {
		return date;
	}
	
	public void setDate(String s) {
		date = s;
	}
	
	public String getType() {
		return type;
	}
	
	public void setType(String s) {
		type = s;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String s) {
		email = s;
	}
}
