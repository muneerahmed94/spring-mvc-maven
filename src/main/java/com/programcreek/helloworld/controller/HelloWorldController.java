package com.programcreek.helloworld.controller;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class HelloWorldController {
	String message = "Welcome to Spring MVC!";
 
	@RequestMapping("/hello")
	public ModelAndView showMessage(
			@RequestParam(value = "name", required = false, defaultValue = "Muneer") String name) {
		System.out.println("in controller");
 
		ModelAndView mv = new ModelAndView("helloworld");
		mv.addObject("message", message);
		mv.addObject("name", name);
		return mv;
	}
	
	@RequestMapping(value="/button", params = {"button=button1"})
	@ResponseBody
	public String button1() {
	    return "Response string for button1";
	}
	
	@RequestMapping(value="/button", params = {"button=button2"})
	@ResponseBody
	public String button2() {
	    return "Response string for button2";
	}
	
	@RequestMapping(value="/button", params = {"button=button3"})
	@ResponseBody
	public String button3() {
	    return "Response string for button3";
	}
}