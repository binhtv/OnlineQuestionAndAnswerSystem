package com.codnel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/question")
public class QuestionController {
	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public String listQuestions() {
		return "/question/list";
	}
}
