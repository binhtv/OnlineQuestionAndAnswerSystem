package com.codnel.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.codnel.domain.LoginDetails;
import com.codnel.domain.PersonalDetails;
import com.codnel.domain.Profile;
import com.codnel.domain.Role;
import com.codnel.domain.Topic;
import com.codnel.domain.User;
import com.codnel.repository.RegistrationRepository;
import com.codnel.service.RegistrationService;

@Service
@Transactional 
public class RegistrationServiceImpl implements RegistrationService{
	
	@Autowired
	RegistrationRepository registrationRepository;
	
	private LoginDetails loginDetails;
	private PersonalDetails personalDetails;
	private Topic favoriteTopic;
	
	public void setLoginDetails(LoginDetails loginDetails) {
		this.loginDetails = loginDetails;
	}
	public void setPersonalDetails(PersonalDetails personalDetails) {
		this.personalDetails = personalDetails;
	}
	
	public void setFavoriteTopic(Topic favoriteTopic) {
		this.favoriteTopic = favoriteTopic;
	}
	
	public void registerUser() {
	
		Profile userProfile = new Profile();
		userProfile.setFirstName(this.personalDetails.getFirstName());
		userProfile.setLastName(this.personalDetails.getLastName());
		userProfile.setBirthDay(this.personalDetails.getBirthDate());
		userProfile.setEmail(this.personalDetails.getEmail());
		userProfile.setGender(this.personalDetails.getGender());
		
		Role userRole = new Role();
		userRole.setRole("ROLE_USER");
		
		List<Topic> followingTopics = new ArrayList<Topic>();
		followingTopics.add(favoriteTopic);
		
		User newUser = new User();
		newUser.setUsername(this.loginDetails.getUserName());
		newUser.setPassword(this.loginDetails.getPassword());
		newUser.setFollowingTopics(followingTopics);
		newUser.setProfile(userProfile);
		
		registrationRepository.save(newUser);
	}

}
