package com.mulcam.backend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	
	@GetMapping(value = "/index")
	public String index() {		
		return "index";
	}
	
	@GetMapping(value = "/howmany")
	public String howmany() {		
		return "howmany";
	}

}
