package com.codnel.controller;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomCollectionEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.codnel.domain.Question;
import com.codnel.domain.Topic;
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
		return "addForm";
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String showQuestion(@PathVariable("id") int id, Model model)
	{
		Question question = questionService.find(id);
		model.addAttribute("question", question);
		System.out.println(question.getTitle());
		return "showQuestion";
	}
	
	@RequestMapping(value = "/add", method=RequestMethod.POST)
	public String addQuestion(@ModelAttribute("question") Question question)
	{
		questionService.addQuestion(question);
		System.out.println("added question" + question.getId());
		return "redirect:/welcome";

	}
	
	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public String listQuestions(Model model) {
		List<Question> questions = questionService.getAllQuestions();
		model.addAttribute("questions", questions);
		return "/question/list";
	}
	
//	@InitBinder
//    protected void initBinder(WebDataBinder binder) throws Exception{
//        binder.registerCustomEditor(Set.class,"topics", new CustomCollectionEditor(Set.class){
//            protected Object convertElement(Object element){
//                if(element != null) {
//                    Topic topic = topicService.findFromId(Integer.parseInt(element.toString()));
//
//                    return topic;
//                }
//                return null;
//            }
//        });
//    }
}
