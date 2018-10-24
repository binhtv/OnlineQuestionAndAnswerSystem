package com.codnel.domain;

import java.io.Serializable;
import java.util.Date;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

public class PersonalDetails implements Serializable{
	private static final long serialVersionUID = 2L;

	@NotEmpty
	@Size(min=5, max=25, message= "{Size.firstName}")
	private String firstName;
	
	@NotEmpty
	@Size(min=5, max=25, message= "{Size.lastName}")
	private String lastName;
	
	private String gender;
	
	@Past
	@DateTimeFormat(pattern = "MM/DD/YYYY")
	private Date birthDate;
	
	@NotEmpty
	@Email
	private String email;
	
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
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

}
