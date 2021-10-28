package parkingProject.vo;

public class Parking {//공영주차장

	int no;						//번호 primary Key
	String name;				//주차장 이름
	String adress;				//주차장 주소
	String kinds;				//종류
	String division;			//주차장 구별
	String telNumber;			//전화번호
	String pay;					//유료, 무료
	String nightOpen;			//저녁에는 개방
	String satPay;				//토요일 비용
	String sunPay;				//일요일 비용
	int basicPrice;				//기본 금액
	int basicTime;				//기본 시간(분)
	int addPrice;				//추가 금액
	int addTime;				//추가 시간(분)
	
	public Parking () {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public String getKinds() {
		return kinds;
	}

	public void setKinds(String kinds) {
		this.kinds = kinds;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}

	public String getTelNumber() {
		return telNumber;
	}

	public void setTelNumber(String telNumber) {
		this.telNumber = telNumber;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	public String getNightOpen() {
		return nightOpen;
	}

	public void setNightOpen(String nightOpen) {
		this.nightOpen = nightOpen;
	}

	public String getSatPay() {
		return satPay;
	}

	public void setSatPay(String satPay) {
		this.satPay = satPay;
	}

	public String getSunPay() {
		return sunPay;
	}

	public void setSunPay(String sunPay) {
		this.sunPay = sunPay;
	}

	public int getBasicPrice() {
		return basicPrice;
	}

	public void setBasicPrice(int basicPrice) {
		this.basicPrice = basicPrice;
	}

	public int getBasicTime() {
		return basicTime;
	}

	public void setBasicTime(int basicTime) {
		this.basicTime = basicTime;
	}

	public int getAddPrice() {
		return addPrice;
	}

	public void setAddPrice(int addPrice) {
		this.addPrice = addPrice;
	}

	public int getAddTime() {
		return addTime;
	}

	public void setAddTime(int addTime) {
		this.addTime = addTime;
	}
	
	
}
