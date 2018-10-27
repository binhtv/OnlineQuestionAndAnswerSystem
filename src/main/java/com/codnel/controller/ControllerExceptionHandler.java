package com.codnel.controller;

import java.io.FileNotFoundException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.core.annotation.AnnotationUtils;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ControllerExceptionHandler {

	// Handler for FileNotFoundException
	@ExceptionHandler(FileNotFoundException.class)
	public ModelAndView handleFNFException(HttpServletRequest req, FileNotFoundException exception) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("fileNotFound", exception.getMessage());
		mav.setViewName("fileNotFound");
		return mav;
	}

	// Handler for all other Exceptions
	@ExceptionHandler(value = Exception.class)
	public ModelAndView handleAllOtherExceptions(HttpServletRequest req, Exception exp) throws Exception {
		// Re-throw all exception annotated with @ResponseStatus
		if (AnnotationUtils.findAnnotation(exp.getClass(), ResponseStatus.class) != null) {
			throw exp;
		}

		ModelAndView mav = new ModelAndView();
		mav.addObject("exception", exp);
		mav.addObject("url", req.getRequestURL());
		mav.setViewName("error");
		return mav;
	}

}
