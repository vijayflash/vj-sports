package com.niit.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;

@ControllerAdvice
public class HomeController {

	@RequestMapping("/")
	public String homePage(Model model) {

		return "home";
	}

	/*@RequestMapping(value = "/signup")
	public ModelAndView goTosignup(Model model) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("user", new User());
		mv.setViewName("signup");
		return mv;
	}*/
}
