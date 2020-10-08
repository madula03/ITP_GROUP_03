package Model;

public class Allocation {
	
	private int allocationid;
	private int bookid;
	private String pickuplocation ;
	private int noofdays ;
	private int noofperson ;
	private String pickupdate ;
	private String returndate ;
	private String pickuptime ;
	private int driverid;

	private float driversalary;
	public int getAllocationid() {
		return allocationid;
	}
	public void setAllocationid(int allocationid) {
		this.allocationid = allocationid;
	}
	public int getBookid() {
		return bookid;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public String getPickuplocation() {
		return pickuplocation;
	}
	public void setPickuplocation(String pickuplocation) {
		this.pickuplocation = pickuplocation;
	}
	public int getNoofdays() {
		return noofdays;
	}
	public void setNoofdays(int noofdays) {
		this.noofdays = noofdays;
	}
	public int getNoofperson() {
		return noofperson;
	}
	public void setNoofperson(int noofperson) {
		this.noofperson = noofperson;
	}
	public String getPickupdate() {
		return pickupdate;
	}
	public void setPickupdate(String pickupdate) {
		this.pickupdate = pickupdate;
	}
	public String getReturndate() {
		return returndate;
	}
	public void setReturndate(String returndate) {
		this.returndate = returndate;
	}
	public String getPickuptime() {
		return pickuptime;
	}
	public void setPickuptime(String pickuptime) {
		this.pickuptime = pickuptime;
	}
	public int getDriverid() {
		return driverid;
	}
	public void setDriverid(int driverid) {
		this.driverid = driverid;
	}

	public float getDriversalary() {
		return 300*noofdays;
	}
	
	
	public void setDriversalary(float driversalary) {
		this.driversalary = driversalary;
	}
	@Override
	public String toString() {
		return "Allocation [allocationid=" + allocationid + ", bookid=" + bookid + ", pickuplocation=" + pickuplocation
				+ ", noofdays=" + noofdays + ", noofperson=" + noofperson + ", pickupdate=" + pickupdate
				+ ", returndate=" + returndate + ", pickuptime=" + pickuptime + ", driverid=" + driverid
				+ ", driversalary=" + driversalary + "]";
	}
	
	
	
	
	
	
	
	

}
