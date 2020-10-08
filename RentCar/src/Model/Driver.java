package Model;

public class Driver {
	
	private int driverid;
	
	private String name;
    private String address;
    private String email;
    private String licence_num;
    private String dob;
    private float tripsalary=0;
    private float netsalary=0;
    private String mobile;
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public int getDriverid() {
		return driverid;
	}
	public void setDriverid(int driverid) {
		this.driverid = driverid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLicence_num() {
		return licence_num;
	}
	public void setLicence_num(String licence_num) {
		this.licence_num = licence_num;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public float getTripsalary() {
		return tripsalary;
	}
	public void setTripsalary(float tripsalary) {
		this.tripsalary = tripsalary;
	}
	public float getNetsalary() {
		netsalary=netsalary+(tripsalary/2);
		return netsalary;
	}
	public void setNetsalary(float netsalary) {
		this.netsalary = netsalary;
	}
	
	
	@Override
	public String toString() {
		return "Driver [driverid=" + driverid + ", name=" + name + ", address=" + address + ", email=" + email
				+ ", licence_num=" + licence_num + ", dob=" + dob + ", tripsalary=" + tripsalary + ", netsalary="
				+ netsalary + ", mobile=" + mobile + "]";
	}
	
	
	
	
	
    
    
}
