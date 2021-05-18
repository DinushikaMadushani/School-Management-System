package com.parent;

public class Parent {
	private String nic;
	private String name;
	private String sid;
	private String address;
	private String phone;
	private String job;
	private String grade;
	private String clas;
	
	public Parent(String nic, String name, String sid, String address, String phone, String job, String grade,
			String clas) {
		
		this.nic = nic;
		this.name = name;
		this.sid = sid;
		this.address = address;
		this.phone = phone;
		this.job = job;
		this.grade = grade;
		this.clas = clas;
	}

	public String getNic() {
		return nic;
	}

	

	public String getName() {
		return name;
	}

	

	public String getSid() {
		return sid;
	}

	

	public String getAddress() {
		return address;
	}

	

	public String getPhone() {
		return phone;
	}



	public String getJob() {
		return job;
	}

	

	public String getGrade() {
		return grade;
	}

	

	public String getClas() {
		return clas;
	}

	
}
