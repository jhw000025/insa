package com.kim.test.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kim.test.HomeController;

@Controller
public class InsaController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping("/insaListForm.do")
	public ModelAndView insaListForm(Model model, HttpServletRequest request, HttpServletResponse response) {
		logger.info("들어옴");
		
		return new ModelAndView("insaListForm");
	}
	
	@RequestMapping("/insaInputForm.do")
	public ModelAndView insaInputForm(Model model, HttpServletRequest request, HttpServletResponse response) {
		
		return new ModelAndView("insaInputForm");
	}
}
