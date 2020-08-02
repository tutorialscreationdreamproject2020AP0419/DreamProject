package com.dream.tutorialcreator.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Home {
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/logins")
	public String getLoginForm() {
		return "login";
	}
	
	@RequestMapping("/signUp")
	public String getSignUpForm() {
		return "signUp";
	}
	@RequestMapping("/slider")
	public String getSlider() {
		
		return "slider";
	}

}
