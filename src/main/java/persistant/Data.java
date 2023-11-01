package persistant;

import java.util.ArrayList;
import java.util.List;


public class Data {

	private List<Personne> dbUser;
	/**Instance of Data (follows Singleton design pattern)*/
	private static Data instance;
	
	private Data () {
		dbUser = new ArrayList<Personne>();
	}
	
	public static Data getInstance() {
		if (instance == null) {
			instance = new Data();
		}
		return instance;
	}
	
	public Personne getUser(String firstName, String password) {
		for (Personne p : dbUser) {
			if (p.getFirstName().equals(firstName)) {
				if (p.getPassword().equals(password)) {
					
					return p;
				}
					
			}
        }
		return null;
	}
	
	public void createUser(String lastName, String middleName, String firstName, String gender, 
	String email, String phoneNumber, String password, boolean contact){
		dbUser.add(new Personne(dbUser.size() + 1,lastName,middleName,firstName,gender,email,phoneNumber,password,contact));
	}
	
}
