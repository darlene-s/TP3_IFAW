package persistant;

public class Personne {
	
	private int id;

	private String lastName;
	private String middleName;
	private String firstName;
	
	private String gender;
	private String email;
	private String phoneNumber;
	private String password;
	private boolean contact;
	
	public Personne(int id, String lastName, String middleName, String firstName, String gender, 
			String email, String phoneNumber, String password, boolean contact) {
	
		this.id = id;
		this.lastName = lastName;
		this.middleName = middleName;
		this.firstName = firstName;		
		this.gender = gender;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.password = password;
		this.contact = contact;
	}
	
	public static boolean isStringOnlyAlphabet(String str){	 
        return ((str != null) && (!str.equals(""))
                && (str.matches("^[a-zA-Z]*$")));
	 }
	
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isContact() {
		return contact;
	}
	public void setContact(boolean contact) {
		this.contact = contact;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
}
