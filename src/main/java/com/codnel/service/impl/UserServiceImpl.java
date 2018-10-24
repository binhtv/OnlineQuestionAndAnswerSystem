package com.codnel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.codnel.domain.User;
import com.codnel.repository.UserRepository;
import com.codnel.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	UserRepository userRepository;
	
	@Override
	public User findFromUsername(String username) {
		return userRepository.findFromUsername(username);
	}
	
}
