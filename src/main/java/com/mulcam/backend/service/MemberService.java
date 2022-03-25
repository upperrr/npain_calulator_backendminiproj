package com.mulcam.backend.service;

import java.util.List;

import com.mulcam.backend.dto.Member;

public interface MemberService {
	
	boolean login(String id, String password1) throws Exception;
	
	boolean memOverlap(String id) throws Exception;
	void makeMember(Member mem) throws Exception;

	boolean howmany(String numberofpeople);

	//String[] queryFriends() throws Exception;
	
	String[] MemberById() throws Exception;
	//List<Question> questionByDifficulty(int difficulty) throws Exception;





	
}
