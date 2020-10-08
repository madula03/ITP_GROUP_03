package Model;

public class Paymentmodel {

	private int payID;
	private float Totpay;
	private String payType;
	private String holdername;
	private String cardnumber;
	private String expDate;
	private int ccv;
	private String coupon;

	// getters and setters

	public int getPayID() {
		return payID;
	}

	public String getCardnumber() {
		return cardnumber;
	}

	public void setCardnumber(String cardnumber) {
		this.cardnumber = cardnumber;
	}

	public void setPayID(int payID) {
		this.payID = payID;
	}

	public float getTotpay() {
		return Totpay;
	}

	public void setTotpay(float totpay) {
		Totpay = totpay;
	}

	public String getPayType() {
		return payType;
	}

	public void setPayType(String payType) {
		this.payType = payType;
	}

	public String getHoldername() {
		return holdername;
	}

	public void setHoldername(String holdername) {
		this.holdername = holdername;
	}

	public String getExpDate() {
		return expDate;
	}

	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}

	public int getCcv() {
		return ccv;
	}

	public void setCcv(int ccv) {
		this.ccv = ccv;
	}

	public String getCoupon() {
		return coupon;
	}

	public void setCoupon(String coupon) {
		this.coupon = coupon;
	}

}
