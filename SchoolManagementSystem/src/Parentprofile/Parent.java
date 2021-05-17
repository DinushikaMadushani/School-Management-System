package Parentprofile;

public class Parent {
	private String Nic;
	private String Name;
	private String StudentID;
	private String DOB;
	private String Street;
	private String city;
	private String province;
	private String email;
	private String father;
	private String Mother;
	private String Guidian;
	private String password;
	
	public Parent(String nic, String name, String studentID, String dOB, String street, String city, String province,
			String email, String father, String mother, String guidian, String password) {
		super();
		Nic = nic;
		Name = name;
		StudentID = studentID;
		DOB = dOB;
		Street = street;
		this.city = city;
		this.province = province;
		this.email = email;
		this.father = father;
		Mother = mother;
		this.Guidian = guidian;
		this.password = password;
	}

	public String getNic() {
		return Nic;
	}

	public String getName() {
		return Name;
	}

	
	public String getStudentID() {
		return StudentID;
	}

	
	public String getDOB() {
		return DOB;
	}

	

	public String getStreet() {
		return Street;
	}

	

	public String getCity() {
		return city;
	}

	
	public String getProvince() {
		return province;
	}

	

	public String getEmail() {
		return email;
	}

	

	public String getFather() {
		return father;
	}

	

	public String getMother() {
		return Mother;
	}

	
	public String getGuidian() {
		return Guidian;
	}


	public String getPassword() {
		return password;
	}

	
	
	
}
