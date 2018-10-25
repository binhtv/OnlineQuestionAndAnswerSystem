package com.codnel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codnel.domain.Profile;
import com.codnel.domain.Question;
import com.codnel.repository.ProfileRepository;
import com.codnel.service.ProfileService;

@Service
public class ProfileServiceImpl implements ProfileService {

	@Autowired
	private ProfileRepository profileRepo;
	
	@Override
	public Profile findFromUserId(Integer userId) {
		return profileRepo.findFromUserId(userId);
	}
	
	@Override
	public Profile saveProfile(Profile profile) {
		return profileRepo.save(profile);
	}
	
}
