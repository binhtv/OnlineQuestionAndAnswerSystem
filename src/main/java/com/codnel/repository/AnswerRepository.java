package com.codnel.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codnel.domain.Answer;

@Repository
public interface AnswerRepository  extends CrudRepository<Answer, Integer>{
	
}
