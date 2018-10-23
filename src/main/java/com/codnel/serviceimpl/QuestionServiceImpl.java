package com.codnel.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codnel.domain.Question;
import com.codnel.repository.QuestionRespository;
import com.codnel.service.QuestionService;

@Service
public class QuestionServiceImpl implements QuestionService {
	@Autowired
	private QuestionRespository questionRepository;

	public List<Question> getAllQuestions() {
		return (List<Question>) questionRepository.findAll();
	}
}
