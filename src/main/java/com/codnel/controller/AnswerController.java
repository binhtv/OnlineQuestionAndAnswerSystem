package com.codnel.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.codnel.domain.Answer;
import com.codnel.domain.Question;
import com.codnel.service.AnswerService;
import com.codnel.service.QuestionService;

@Controller
@RequestMapping("answer")
public class AnswerController {

	@Autowired
	QuestionService questionService;

	@Autowired
	AnswerService answerService;
	
	@Autowired
	private SimpMessagingTemplate template;
	
	private Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	
//	@Autowired
//	private IAuthenticationFacade authenticationFacade;

//	@RequestMapping(value = "/add", method = RequestMethod.POST)
//	public @ResponseBody Answer addAnswer(@Param("questionId") String questionId, @Param("details") String details) {
//		Question question = questionService.find(Integer.valueOf(questionId));
//		Answer answer = new Answer();
//		answer.setDetails(details);
//		answer.setDateTime(new Date());
//		questionService.addAnswer(question, answer);
//		return answer;
//	}
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public @ResponseBody Answer addAnswerGET(@Param("questionId") String questionId, @Param("details") String details) {
		Question question = questionService.find(Integer.valueOf(questionId));
		Answer answer = new Answer();
		answer.setDetails(details);
		answer.setDateTime(new Date());
		answer.setQuestion(question);
		Answer saved = answerService.saveAnswer(answer);
		// Send message to the channel to update the question list
		template.convertAndSend("/topic/answer/add", saved);
		return saved;
	}

}
