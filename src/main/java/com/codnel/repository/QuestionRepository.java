package com.codnel.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codnel.domain.Question;

@Repository
public interface QuestionRepository extends CrudRepository<Question, Integer> {
	@Override
	@Query(value = "select q from question q order by q.dateTime desc")
	Iterable<Question> findAll();

//	@Modifying
//	@Query(value = "update question q set q.votes = q.votes + 1 where q.id = :id")
//	void voteUp(@Param("id") Integer id);
}
