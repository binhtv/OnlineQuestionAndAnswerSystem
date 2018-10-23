package com.codnel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
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

	@Autowired
	private SimpMessagingTemplate template;

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String getQuestionForm(@ModelAttribute("question") Question question, Model model) {
		model.addAttribute("allTopics", topicService.findAll());
		return "addForm";
	}

	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public String showQuestion(@PathVariable("id") int id, Model model) {
		Question question = questionService.find(id);
		model.addAttribute("question", question);
		System.out.println(question.getTitle());
		return "showQuestion";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addQuestion(@ModelAttribute("question") Question question) {
		questionService.addQuestion(question);
		//Send message to the channel to update the question list
		template.convertAndSend("/topic/question/add", question);
		System.out.println("added question" + question.getId());
		return "redirect:/question/"+question.getId();

	}

	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public String listQuestions(Model model) {
		List<Question> questions = questionService.getAllQuestions();
		model.addAttribute("questions", questions);
		return "/question/list";
	}

	// @RequestMapping(value = "/testws", method = RequestMethod.GET)
	// @SendTo("/topic/question/add")
	// public Question testWeb() {
	// Question q = new Question();
	// q.setId(1);
	// q.setTitle("Test title");
	// q.setDetails("This is question detail");
	// Topic t = new Topic();
	// t.setName("Java");
	// q.setTopics(Arrays.asList(t));
	// template.convertAndSend("/topic/question/add", q);
	// return q;
	// //template.convertAndSend("/topic/question/add", q);
	// //return "/question/testws";
	// }
}
