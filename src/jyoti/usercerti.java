package jyoti;

public class usercerti {
	String cityname;
	String certiname;
	String certidiscription;
	String certilocation;
	
	
	public usercerti(String cityname, String certiname, String certidiscription, String certilocation) {
		super();
		this.cityname = cityname;
		this.certiname = certiname;
		this.certidiscription = certidiscription;
		this.certilocation = certilocation;
	}
	public String getCityname() {
		return cityname;
	}
	public void setCityname(String cityname) {
		this.cityname = cityname;
	}
	public String getCertiname() {
		return certiname;
	}
	public void setCertiname(String certiname) {
		this.certiname = certiname;
	}
	public String getCertidiscription() {
		return certidiscription;
	}
	public void setCertidiscription(String certidiscription) {
		this.certidiscription = certidiscription;
	}
	public String getCertilocation() {
		return certilocation;
	}
	public void setCertilocation(String certilocation) {
		this.certilocation = certilocation;
	}
	@Override
	public String toString() {
		return "usercerti [cityname=" + cityname + ", certiname=" + certiname + ", certidiscription=" + certidiscription
				+ ", certilocation=" + certilocation + "]";
	}
}

	
	