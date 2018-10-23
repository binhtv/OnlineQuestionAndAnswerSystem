package com.codnel.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codnel.domain.Question;

@Repository
public interface QuestionRepository extends CrudRepository<Question, Integer>{
	@Override
	@Query(value="select q from question q order by q.dateTime desc")
	Iterable<Question> findAll();
}
