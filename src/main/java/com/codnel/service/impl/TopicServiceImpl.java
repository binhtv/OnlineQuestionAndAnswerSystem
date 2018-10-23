package com.codnel.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.codnel.domain.Topic;
import com.codnel.repository.TopicRepository;
import com.codnel.service.TopicService;

@Service
@Transactional
public class TopicServiceImpl implements TopicService{

	@Autowired
	TopicRepository topicRepo;
	
	@Override
	public List<Topic> findAll() {
		return (List<Topic>) topicRepo.findAll() ;
	}
	
}
