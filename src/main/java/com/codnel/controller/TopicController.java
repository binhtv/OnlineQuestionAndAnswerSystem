package com.codnel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codnel.service.TopicService;

@Controller
public class TopicController {
	
	@Autowired
	TopicService topicService;
	
	@RequestMapping(value="/topics", method=RequestMethod.GET)
	public String showTopics(Model model) {
		model.addAttribute("topics", topicService.findAll());
		return "topics";
	}

}
