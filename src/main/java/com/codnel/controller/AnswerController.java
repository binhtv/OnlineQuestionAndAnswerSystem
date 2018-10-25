package com.codnel.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.codnel.domain.Answer;
import com.codnel.domain.Question;
import com.codnel.service.AnswerService;
import com.codnel.service.QuestionService;
import com.codnel.service.UserService;

@Controller
@RequestMapping("answer")
public class AnswerController {

	@Autowired
	QuestionService questionService;

	@Autowired
	AnswerService answerService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	private SimpMessagingTemplate template;
	
	private Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public @ResponseBody Answer addAnswerGET(@Param("questionId") String questionId, @Param("details") String details) {
		Question question = questionService.find(Integer.valueOf(questionId));
		Answer answer = new Answer();
		answer.setDetails(details);
		answer.setDateTime(new Date());
		answer.setQuestion(question);
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 
		if(auth!=null && !"anonymousUser".equals(auth.getPrincipal()))
		{
			User user = (User)auth.getPrincipal();
			com.codnel.domain.User answerer = userService.findFromUsername(user.getUsername());
			answer.setAnswerer(answerer);
		}
		
		Answer saved = answerService.saveAnswer(answer);
		// Send message to the channel to update the question list
		template.convertAndSend("/topic/answer/add", saved);
		return saved;
	}

}
