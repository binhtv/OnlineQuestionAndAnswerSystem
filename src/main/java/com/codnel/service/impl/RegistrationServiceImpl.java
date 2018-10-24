package com.codnel.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.codnel.domain.LoginDetails;
import com.codnel.domain.PersonalDetails;
import com.codnel.domain.Profile;
import com.codnel.domain.Role;
import com.codnel.domain.Topic;
import com.codnel.domain.User;
import com.codnel.repository.ProfileRepository;
import com.codnel.repository.RegistrationRepository;
import com.codnel.repository.TopicRepository;
import com.codnel.service.RegistrationService;

@Service
@Transactional 
public class RegistrationServiceImpl implements RegistrationService{
	
	@Autowired
	private RegistrationRepository registrationRepository;
	@Autowired
	private ProfileRepository profileRepository;
	@Autowired
	private TopicRepository topicRepo;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	private LoginDetails loginDetails;
	private PersonalDetails personalDetails;
	private List<Topic> favoriteTopics = new ArrayList<>();
	
	public void setLoginDetails(LoginDetails loginDetails) {
		this.loginDetails = loginDetails;
	}
	public void setPersonalDetails(PersonalDetails personalDetails) {
		this.personalDetails = personalDetails;
	}
	
	public void setFavoriteTopic(Topic favoriteTopic) {
		if(favoriteTopic != null && favoriteTopic.getName() != null && favoriteTopic.getName().length() > 0) {
			String[] ids = favoriteTopic.getName().split(",");
			favoriteTopics.clear();
			for(String id : ids) {
				favoriteTopics.add(topicRepo.findOne(Integer.valueOf(id)));
			}
		}
	}
	
	public void registerUser() {
		Profile userProfile = new Profile();
		userProfile.setFirstName(this.personalDetails.getFirstName());
		userProfile.setLastName(this.personalDetails.getLastName());
		userProfile.setEmail(this.personalDetails.getEmail());
		userProfile.setGender(this.personalDetails.getGender());
		
		Role userRole = new Role();
		userRole.setRole("ROLE_USER");
		
		User newUser = new User();
		newUser.setUsername(this.loginDetails.getUserName());
		newUser.setPassword(passwordEncoder.encode(this.loginDetails.getPassword()));
		newUser.setFollowingTopics(this.favoriteTopics);
		newUser.setEnabled(true);
		
		userProfile.setUser(newUser);
		
		registrationRepository.save(newUser);
		profileRepository.save(userProfile);
	}

}
