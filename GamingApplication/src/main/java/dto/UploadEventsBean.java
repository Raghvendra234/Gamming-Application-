package dto;

import lombok.Data;

public class UploadEventsBean 
{

	private int id;
	private String name, email, number, tname,fees, pwinner, ploser;
	private String sdate, ldate;
	private String overs;
	
	public UploadEventsBean() {
		super();
		
	}

	public UploadEventsBean(int id,String name, String email, String number, String tname, String fees, String pwinner,
			String ploser, String sdate, String ldate, String overs) {
		super();
		this.id=id;
		this.name = name;
		this.email = email;
		this.number = number;
		this.tname = tname;
		this.fees = fees;
		this.pwinner = pwinner;
		this.ploser = ploser;
		this.sdate = sdate;
		this.ldate = ldate;
		this.overs = overs;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getFees() {
		return fees;
	}

	public void setFees(String fees) {
		this.fees = fees;
	}

	public String getPwinner() {
		return pwinner;
	}

	public void setPwinner(String pwinner) {
		this.pwinner = pwinner;
	}

	public String getPloser() {
		return ploser;
	}

	public void setPloser(String ploser) {
		this.ploser = ploser;
	}

	public String getSdate() {
		return sdate;
	}

	public void setSdate(String sdate) {
		this.sdate = sdate;
	}

	public String getLdate() {
		return ldate;
	}

	public void setLdate(String ldate) {
		this.ldate = ldate;
	}

	public String getOvers() {
		return overs;
	}

	public void setOvers(String overs) {
		this.overs = overs;
	}
	
}
