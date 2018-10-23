package com.codnel.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codnel.domain.Topic;

@Repository
public interface TopicRepository extends CrudRepository<Topic, Integer>{
	
}
