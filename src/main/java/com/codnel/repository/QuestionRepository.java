package com.codnel.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codnel.domain.Question;

@Repository
public interface QuestionRepository extends CrudRepository<Question, Integer>{
	
}
