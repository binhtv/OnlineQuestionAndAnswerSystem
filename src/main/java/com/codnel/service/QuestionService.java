package com.codnel.service;

import com.codnel.domain.Question;

public interface QuestionService {
	public void addQuestion(Question question);
	public Question find(int id);
}
