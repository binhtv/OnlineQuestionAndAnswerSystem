package com.codnel.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity(name = "profile")
public class Profile {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column(name = "first_name", length = 16)
	@NotEmpty
	@Size(min=5, max=25, message= "{Size.firstName}")
	private String firstName;

	@Column(name = "last_name", length = 16)
	@NotEmpty
	@Size(min=5, max=25, message= "{Size.lastName}")
	private String lastName;
	
	private String gender;

	@Email
	@NotEmpty
	private String email;

	@NotNull
	@Past
	@DateTimeFormat(pattern = "MM/DD/YYYY")
	@Column(name = "birth_day")
	private Date birthDay;

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
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
