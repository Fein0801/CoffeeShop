package co.grandcircus.coffee_shop.model;

import org.springframework.stereotype.Component;

@Component
public class EndUser {
	
	private String firstName;
	private String lastName;
	private String email;
	private String phone;
	private String password;
	private String gender;
	
	public EndUser() {
		super();
	}

	public EndUser(String firstName, String lastName, String email, String phone, String password, String gender) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.gender = gender;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	// TODO Make a better-looking display
	@Override
	public String toString() {
		return "EndUser [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", phone=" + phone
				+ ", password=" + password + ", gender=" + gender + "]";
	}
}
