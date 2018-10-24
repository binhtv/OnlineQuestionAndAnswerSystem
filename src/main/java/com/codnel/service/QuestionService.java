package com.codnel.service;

import java.util.List;

import com.codnel.domain.Question;

public interface QuestionService {
	public void saveQuestion(Question question);
	public void updateQuestion(Question question);
	public Question find(int id);
	public List<Question> getAllQuestions();
}
