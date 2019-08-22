package co.grandcircus.coffee_shop.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class EndUser {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;

	private String firstName;
	private String lastName;
	private String email;
	private String phone;
	private String password;
	private String gender;
	
	@Enumerated(EnumType.ORDINAL)
	private AdminStatus adminStatus;

	public EndUser() {
		super();
	}

	public EndUser(Integer id, String firstName, String lastName, String email, String phone, String password,
			String gender, AdminStatus adminStatus) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.password = password;
		this.gender = gender;
		this.adminStatus = adminStatus;
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

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public AdminStatus getAdminStatus() {
		return adminStatus;
	}

	public void setAdminStatus(AdminStatus adminStatus) {
		this.adminStatus = adminStatus;
	}

	@Override
	public String toString() {
		return "EndUser [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", phone=" + phone + ", password=" + password + ", gender=" + gender + ", adminStatus=" + adminStatus
				+ "]";
	}

}
