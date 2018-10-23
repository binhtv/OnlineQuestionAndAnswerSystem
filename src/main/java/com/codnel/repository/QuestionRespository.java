package com.codnel.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codnel.domain.Question;

@Repository
public interface QuestionRespository extends CrudRepository<Question, Long> {
}
