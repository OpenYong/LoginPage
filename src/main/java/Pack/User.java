  
package Pack;

public class User {
<<<<<<< HEAD
	private String uName;
	private String uId;
	private String pass;
	private String address;
	private String bd;
	private String uTel;
	
	
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getBd() {
		return bd;
	}
	public void setBd(String bd) {
		this.bd = bd;
	}
	public String getuTel() {
		return uTel;
	}
	public void setuTel(String uTel) {
		this.uTel = uTel;
	}

	
	
	
	
	
=======
	String uName;
	String uId;
	String pass;
	String bd;
	String address;
	String uTel;
	Boolean infoCheck = false;
	public User() {
	};
	public String getuName() { return uName; }
	public void setuName(String uName) { this.uName = uName; }
	public String getuId() { return uId; }
	public void setuId(String uId) { this.uId = uId; }
	public String getPass() { return pass; }
	public void setPass(String pass) { this.pass = pass; }
	public String getBd() { return bd; }
	public void setBd(String bd) { this.bd = bd; }
	public String getAddress() { return address; }
	public void setAddress(String address) { this.address = address; }
	public String getuTel() { return uTel; }
	public void setuTel(String uTel) { this.uTel = uTel; }
	public Boolean getInfoCheck() { return infoCheck; }
	public void setInfoCheck(Boolean infoCheck) { this.infoCheck = infoCheck; }	
>>>>>>> b1aec4d2cdfae37031aa100e2946bec2fe5ff51f
}
