package org.zerock.controller;

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
	
	@RequestMapping("/membership/login_test")
	public String login() {
		return "/membership/login_test";
	}
	
	@RequestMapping("/membership/register")
	public String register() {
		return "/membership/register";
	}
	
	@RequestMapping("/membership/forgot-password")
	public String forgot_password() {
		return "/membership/forgot-password";
	}
	
	@PostMapping("/register1")
	public void register1(MembershipVO membership, Model model) {
		log.info("register(등록) : " + membership);

		membership.address(); // address 메서드 호출

		model.addAttribute("member_true", membership);

		MembershipVO f_member = service.read(membership.getId());

//        model.addAttribute("id", member.getId());
//        model.addAttribute("password", member.getPassword());
//        model.addAttribute("email", member.getEmail());
//        model.addAttribute("name", member.getName());
//        model.addAttribute("p_num",member.getP_num());
//        model.addAttribute("address", member.getAddress());
//        model.addAttribute("gender", member.getGender());
//        model.addAttribute("age", member.getAge());
		model.addAttribute("member_false", f_member);

		// return "redirect:/index.jsp"; // 등록이 완료된 후 이동할 페이지
	}

	@PostMapping("/register2")
	public void register2(MembershipVO membership, Model model) {
		log.info("register(등록) : " + membership);

		membership.address(); // address 메서드 호출

		service.register(membership);
		model.addAttribute("result", "success");

		// return "redirect:/index.jsp"; // 등록이 완료된 후 이동할 페이지
	}

//	@GetMapping("/modify")
//	public void modify() {
//		
//	}

	@GetMapping("/modify")
	public void modify(MembershipVO membership, Model model) {
		log.info("데이터 수정을 실행합니다!");
		model.addAttribute("result", service.modify(membership));
	};

	@GetMapping("/remove")
	public void remove(@RequestParam("id") String id, Model model) {
		log.info("회원탈퇴 처리!");
		if (service.remove(id)) {
			model.addAttribute("result", "success");
		}
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

	
	@PostMapping({"/login", "/main"})
	public void login(@RequestParam("id") String id, @RequestParam("password") String password, Model model) {
		log.info("로그인 처리");
		model.addAttribute("login", service.login(id, password));
	}

}
