package com.customer;

public class usermodel {
	private String inde;
    private String name;
    private String Clas;
    private String grade;
    private String passwor;
 
    
    
	public usermodel(String inde, String name, String Clas, String grade, String passwor) {
	
		this.inde = inde;
		this.name = name;
		this.Clas = Clas;
		this.grade = grade;
		this.passwor = passwor;
		
		
	}

	public String getinde() {
		return inde;
	}

	public String getName() {
		return name;
	}

	public String getClas() {
		return Clas;
	}

	public String getGrade() {
		return grade;
	}

	

	public String getPasswor() {
		return passwor;
	}

	
	


    
}
