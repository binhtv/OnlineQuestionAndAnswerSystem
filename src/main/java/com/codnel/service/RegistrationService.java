package com.codnel.service;

import com.codnel.domain.LoginDetails;
import com.codnel.domain.PersonalDetails;
import com.codnel.domain.Topic;

public interface RegistrationService {
	
	void setLoginDetails(LoginDetails loginDetails);
	void setPersonalDetails(PersonalDetails personalDetails);
	void setFavoriteTopic(Topic favoriteTopics);
	void registerUser();

}
