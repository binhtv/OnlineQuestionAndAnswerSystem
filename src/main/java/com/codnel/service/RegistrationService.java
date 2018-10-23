package com.codnel.service;

import com.codnel.domain.LoginDetails;
import com.codnel.domain.PersonalDetails;

public interface RegistrationService {
	
	void setLoginDetails(LoginDetails loginDetails);
	void setPersonalDetails(PersonalDetails personalDetails);
	
	void registerUser();

}
