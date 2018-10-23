package com.codnel.domain;

import java.io.Serializable;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class LoginDetails implements Serializable{
	
	private static final long serialVersionUID = 1L;
	@NotEmpty
	@Size(min=5, message="{Size.userName}")
	private String userName;
	@NotEmpty
	@Size(min=5, message="{Size.password}")
	private String password;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
