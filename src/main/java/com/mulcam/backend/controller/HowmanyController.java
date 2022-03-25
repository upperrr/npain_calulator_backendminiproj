package com.mulcam.backend.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mulcam.backend.dto.Member;
import com.mulcam.backend.service.MemberService;

@Controller
public class HowmanyController {

	private static final String String = null;

	@Autowired
	MemberService memberService;

	@Autowired
	HttpSession session;

	@PostMapping("/howmany") 
	   public ModelAndView howmany(@RequestParam(value="numberofpeople") String numberofpeople) {
	      ModelAndView mav = new ModelAndView("npain");
	      String result = null;
	      try {
	         boolean islogin= memberService.howmany(numberofpeople);
	         if(islogin) {
	            session.setAttribute("numberofpeople", numberofpeople);
	         }
	         result="엔빵 준비!";
	         mav.addObject("numberofpeople", numberofpeople);
	         
	   
	      } catch(Exception e) {
	         e.printStackTrace();
	         mav.addObject("err", e.getMessage());
	         result="엔빵 준비 실패";
	      }
	      mav.addObject("check", result);
	      return mav; 
	}
	      
//	      @GetMapping("/queryFriends")
//	  	public ModelAndView form() throws Exception {
//	  		ModelAndView mav = new ModelAndView();
//	  		mav.setViewName("howmany");
//	  		
//	  		String[] memArr = memberService.queryFriends();
//	  		// String[] memArr = {"최인규", "박소연", "박종현"};
//	  		
//	  		mav.addObject("memArr", memArr);
//	  		return mav;
//	  	}네네 맞아요
	      

	      

	@GetMapping(value = "/howmanyform")
	public String howmanyPage() {
		return "howmany";
	}

	@GetMapping(value = "/howmany1")
	public String howmany1Page() {
		return "howmany1";
	}

}

//session 처리 한거 다 리무브 처리 해야함.. 네..
