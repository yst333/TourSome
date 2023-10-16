package org.zerock.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MembershipVO;
import org.zerock.service.MembershipService;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/membership/*")

public class MembershipController {

	private MembershipService service;
	
	@RequestMapping("/membership/main")
	public String main() {
		return "/membership/main";
	}
	
	@RequestMapping("/membership/login")
	public String login() {
		return "/membership/login";
	}
	
	@RequestMapping("/membership/modify")
	public String modify() {
		return "/membership/modify";
	}
	
	@RequestMapping("/membership/register")
	public String register() {
		return "/membership/register";
	}
	
	@RequestMapping("/membership/forgot-id")
	public String forgot_id() {
		return "/membership/forgot-id";
	}
	
	@RequestMapping("/membership/forgot-password")
	public String forgot_password() {
		return "/membership/forgot-password";
	}
	
	@PostMapping("/register1")
	public void register1(MembershipVO membership, Model model) {
		log.info("register(등록) : " + membership);

		membership.address();

		model.addAttribute("member_true", membership);
		
		log.info(membership.getId());

		MembershipVO f_member = service.read(membership.getId());

		model.addAttribute("member_false", f_member);

		// return "redirect:/index.jsp"; // 등록이 완료된 후 이동할 페이지
	}

	@PostMapping("/register2")
	public void register2(MembershipVO membership, Model model) {
		log.info("register(등록2) : " + membership);
		
		service.register(membership);
		model.addAttribute("result", "success");

		// return "redirect:/index.jsp"; // 등록이 완료된 후 이동할 페이지
	}

	
	@PostMapping("/modify")
	public String modify(MembershipVO membership, Model model, HttpServletRequest request) {
		log.info("데이터 수정을 실행합니다!");
		membership.address();
		log.info("수정데이터 : " + membership);
		HttpSession session = request.getSession();
		service.modify(membership);
		log.info(membership);
		session.setAttribute("session", membership);
		
		return "redirect:/membership/modify";
	}

	@GetMapping("/find_id")
	public void findId(@RequestParam("name") String name, @RequestParam("email") String email, Model model) {
		log.info("Id 조회 처리");
		model.addAttribute("result", service.findId(name, email));
	}

	@GetMapping("/find_password")
	public void findPassword(@RequestParam("id") String id, @RequestParam("email") String email, Model model) {
		log.info("Id 조회 처리");
		model.addAttribute("result", service.findPassword(id, email));
	}
	
	@PostMapping("/login")
	public String login(@RequestParam("id") String id, @RequestParam("password") String password, HttpServletRequest request) {
		log.info("로그인 처리");
		MembershipVO vo = service.login_read(id, password);
		log.info(vo);
		if (vo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("session", vo);
			// session.setMaxInactiveInterval(10);
		}
		return "redirect:/main.jsp";
	}
	
	@PostMapping("/login_check")
	public void login_check(@RequestParam("id") String id, @RequestParam("password") String password, Model model) {
		log.info("로그인 체크");
		MembershipVO vo = service.login_read(id, password);
		log.info(vo);
		model.addAttribute("check",vo);
	}
	
	@PostMapping("/logout")
	public String logout(HttpServletRequest request) {
	    // 새로 생성하지 않는 조건(false)로 세션을 조회한다
	    HttpSession session = request.getSession(false);
	    if (session != null) {
	        session.invalidate(); // 세션 정보를 삭제한다
	    }
	    return "redirect:/main.jsp";
	}
	
	@PostMapping("/remove_account")
	public String remove_acount(@RequestParam("id") String id, HttpServletRequest request) {
	    // 새로 생성하지 않는 조건(false)로 세션을 조회한다
	    HttpSession session = request.getSession(false);
	    if (session != null) {
	        session.invalidate(); // 세션 정보를 삭제한다
	        service.remove(id);
	    }
	    return "redirect:/membership/login";
	}
	
}
