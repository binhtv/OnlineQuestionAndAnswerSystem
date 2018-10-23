package com.codnel.formatter;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.ParseException;
import org.springframework.format.Formatter;

import com.codnel.domain.Topic;
import com.codnel.service.TopicService;

public class TopicFormatter  implements Formatter<Topic> {

	@Autowired
	private TopicService topicService;

	@Override
	public Topic parse(String text, Locale locale) throws ParseException {
	  	        return topicService.findFromId(Integer.valueOf(text));
	}

	// Automatic setting of selected in form multiple select
	@Override
	public String print(Topic object, Locale locale) {
		return String.valueOf(object.getId());
	}
	
}
