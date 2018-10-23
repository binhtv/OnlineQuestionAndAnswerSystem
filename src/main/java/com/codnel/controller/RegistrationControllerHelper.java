package com.codnel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.codnel.domain.LoginDetails;
import com.codnel.domain.PersonalDetails;
import com.codnel.service.RegistrationService;

@Component
public class RegistrationControllerHelper {
	@Autowired
	RegistrationService registrationService;
	
	public void addLoginDetails(LoginDetails loginDetails) {
		registrationService.setLoginDetails(loginDetails);
	}
	
	public void addProfile(PersonalDetails personalDetails) {
		registrationService.setPersonalDetails(personalDetails);
	}
	
	public void registerUser() {
		registrationService.registerUser();
	}

}
