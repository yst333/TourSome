package org.zerock.service;

import org.apache.ibatis.annotations.Param;
import org.zerock.domain.MembershipVO;

public interface MembershipService {

	public MembershipVO findId(@Param("name") String name, @Param("email") String email );
	
	public MembershipVO findPassword(@Param("id") String id, @Param("email") String email);
	
	public void register(MembershipVO membership);
	
	public MembershipVO read(String id);

	public int modify(MembershipVO membership);
	
	public boolean remove(String id);
	
	public MembershipVO login(@Param("id") String id, @Param("password") String password);
	
}
