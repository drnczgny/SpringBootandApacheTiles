package com.drnczgny.springbootandapachetiles.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	
	@RequestMapping("/")
	public String welcome() {
		return "welcome";
	}
	
	@RequestMapping("/pageone")
	public String pageOne() {
		return "pageOne";
	}
	
	@RequestMapping("/pagetwo")
	public String pageTwo() {
		return "pageTwo";
	}
}