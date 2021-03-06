package com.codnel.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.codnel.domain.Answer;
import com.codnel.domain.Question;
import com.codnel.repository.QuestionRepository;
import com.codnel.service.QuestionService;

@Service
@Transactional
public class QuestionServiceImpl implements QuestionService {

	@Autowired
	private QuestionRepository questionRepo;

	@Override
	public void saveQuestion(Question question) {
		question.setDateTime(new Date());
		questionRepo.save(question);
	}

	@Override
	public Question find(int id) {
		return questionRepo.findOne(id);
		
	}

	@Override
	public List<Question> getAllQuestions() {
		return (List<Question>) questionRepo.findAll();
	}

	@Override
	public void addAnswer(Question question, Answer answer) {
		question.addAnswer(answer);
		questionRepo.save(question);
	}
	
	public void updateQuestion(Question q) {
		questionRepo.save(q);
	}
}
