package org.zerock.service;

import org.springframework.stereotype.Service;
import org.zerock.domain.MembershipVO;
import org.zerock.mapper.MembershipMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class MembershipServiceImpl implements MembershipService {
	
	
	private MembershipMapper mapper;
	
	@Override
	public void register(MembershipVO membership) {
		log.info("회원가입 되었습니다! 환영합니다!");
		mapper.register(membership);
	}
	
	@Override
	public int modify(MembershipVO membership) {
		log.info("modify... 게시글을 수정 처리 합니다!" + membership);
		// 정상적으로 수정이 이루어지면 1이라는 값이 반환되기 때문에
		// '==' 연산자를 이용해서 true/false를 처리할 수 있습니다.
		return mapper.update(membership);
	}
	
	@Override
	public boolean remove(String id) {
		log.info("회원탈퇴를 실행합니다!");
		return mapper.remove(id);
	}
	
	@Override
	public MembershipVO findId(String name, String email) {
		log.info("아이디를 찾습니다!");
		return mapper.findId(name, email);
	}

	@Override
	public MembershipVO findPassword(String id, String email) {
		log.info("비밀번호를 찾습니다!");
		return mapper.findPassword(id, email);
	}

	@Override
	public MembershipVO read(String id) {
		log.info("아이디를 조회합니다!");
		return mapper.read(id);
	}

	@Override
	public MembershipVO login(String id, String password) {
		log.info("로그인을 실행합니다!");
		return mapper.login(id, password);
	}

}
