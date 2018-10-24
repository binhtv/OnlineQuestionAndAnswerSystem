package com.codnel.service;

import com.codnel.domain.User;

public interface UserService {
	public User findFromUsername(String username);
}
