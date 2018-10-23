package com.codnel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codnel.domain.Question;
import com.codnel.service.QuestionService;
import com.codnel.service.TopicService;

@Controller
@RequestMapping("question")
public class QuestionController {
	
	@Autowired
	QuestionService questionService;
	
	@Autowired
	TopicService topicService;
	
	@RequestMapping(value = "/add", method=RequestMethod.GET)
	public String getQuestionForm(@ModelAttribute("question") Question question, Model model)
	{
		model.addAttribute("allTopics", topicService.findAll());
		return "/addForm";
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String showQuestion(@PathVariable("id") int id, Model model)
	{
		Question question = questionService.find(id);
		model.addAttribute("question", question);
		System.out.println(question.getTitle());
		return "/showQuestion";
	}
	
	@RequestMapping(value = "/add", method=RequestMethod.POST)
	public String addQuestion(@ModelAttribute("question") Question question)
	{
		questionService.addQuestion(question);
		System.out.println("added question" + question.getId());
		return "redirect:/welcome";
	}
}
