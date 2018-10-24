package com.codnel.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codnel.domain.Answer;
import com.codnel.domain.Question;

@Repository
public interface AnswerRepository  extends CrudRepository<Answer, Integer>{
	@Override
	@Query(value = "select a from answer a order by a.dateTime desc")
	Iterable<Answer> findAll();
}
