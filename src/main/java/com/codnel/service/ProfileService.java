package com.codnel.service;

import com.codnel.domain.Profile;

public interface ProfileService {
	public Profile saveProfile(Profile profile);
	public Profile findFromUserId(Integer userId);
}
