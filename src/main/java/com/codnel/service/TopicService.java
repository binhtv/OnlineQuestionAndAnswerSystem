package com.codnel.service;

import java.util.List;

import com.codnel.domain.Topic;

public interface TopicService {
	public List<Topic> findAll();
	public Topic findFromId(int id);
}
