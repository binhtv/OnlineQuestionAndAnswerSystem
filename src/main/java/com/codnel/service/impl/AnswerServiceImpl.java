package com.codnel.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.codnel.domain.Answer;
import com.codnel.repository.AnswerRepository;
import com.codnel.service.AnswerService;

@Service
@Transactional
public class AnswerServiceImpl implements AnswerService{

	@Autowired
	AnswerRepository answerRepository;
	
	@Override
	public void saveAnswer(Answer answer) {
		answerRepository.save(answer);
	}
}
