package com.mulcam.backend.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mulcam.backend.dto.Member;
import com.mulcam.backend.service.MemberService;

import java.util.Date;
import java.text.SimpleDateFormat;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;

	@Autowired
	HttpSession session;
	
	@GetMapping("/loginForm")
	    public String loginPage() {      
	       return "login";
	    }
	@PostMapping("/login")
	   public ModelAndView login(@RequestParam(value="id") String id, @RequestParam(value="password1") String password1) {
	      ModelAndView mav = new ModelAndView();
	      String result = null;
	      String[] memb = null;
	      try {
	         boolean islogin= memberService.login(id, password1);
	         if(islogin) {
	            session.setAttribute("id", id);
	            result="로그인 성공";
	         }
	         mav.setViewName("howmany");
	         memb = memberService.MemberById();
	      } catch(Exception e) {
	         e.printStackTrace();
	         mav.addObject("err", e.getMessage());
	         result="로그인 실패";
	      }
	      //System.out.println(memb.length);
	      mav.addObject("memArr", memb);
	      mav.addObject("check", result);
	      return mav;
	      
	   }
	
    @GetMapping("/joinForm")
    public String joinPage() {      
       return "join";
    }
	
	@PostMapping("join")
	public ModelAndView join(@ModelAttribute Member mem) {
		ModelAndView mav=new ModelAndView();
		try {
			memberService.makeMember(mem);
		} catch(Exception e) {
			e.printStackTrace();
		}
		mav.setViewName("redirect:/");
		return mav;
	}

	
	@GetMapping(value = "/")
    public String index() {      
       return "index";
    }
	
	@RequestMapping( "/logout" )
	public String logout(HttpServletRequest request) {
		try {
			session.removeAttribute("id");			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "index";
	}
    
   
    


    
    
    
}
