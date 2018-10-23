package com.codnel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.codnel.domain.LoginDetails;
import com.codnel.domain.PersonalDetails;
import com.codnel.domain.Topic;
import com.codnel.service.RegistrationService;
import com.codnel.service.TopicService;

@Component
public class RegistrationControllerHelper {
	@Autowired
	RegistrationService registrationService;
	
//	@Autowired
//	TopicService topicService;
//	
//	public List<Topic> getTopics() {
//		return topicService.findAll();
//	}
	
	public void addLoginDetails(LoginDetails loginDetails) {
		registrationService.setLoginDetails(loginDetails);
	}
	
	public void addPersonalDetails(PersonalDetails personalDetails) {
		registrationService.setPersonalDetails(personalDetails);
	}
	
	public void addFavoriteTopic(Topic favoriteTopic) {
		registrationService.setFavoriteTopic(favoriteTopic);
	}
	
	public void registerUser() {
		registrationService.registerUser();
	}

}
