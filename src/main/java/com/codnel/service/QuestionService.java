package com.codnel.service;

import java.util.List;

import com.codnel.domain.Answer;
import com.codnel.domain.Question;

public interface QuestionService {
	public void addQuestion(Question question);
	public void addAnswer(Question question, Answer answer);
	public Question find(int id);
	public List<Question> getAllQuestions();
}
