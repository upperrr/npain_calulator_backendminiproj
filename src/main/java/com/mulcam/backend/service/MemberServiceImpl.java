package com.mulcam.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mulcam.backend.dao.MemberDAO;
import com.mulcam.backend.dto.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO MemberDAO;
	
	@Override
	public boolean login(String id, String password1) throws Exception {
		Member member = MemberDAO.queryMember(id);
		if(!member.getId().equals(null)) {
			try {
				if(member.getPassword1().equals(password1)) {
					return true;
				}
			} catch (Exception e) {
				return false;
			}
		}
		throw new Exception("로그인이 실패 하였습니다.^^;");
	}

	@Override
	public boolean memOverlap(String id) throws Exception {
		Member mem=MemberDAO.queryMember(id);
		if(mem==null) return false;
		return true;
	}

	@Override
	public void makeMember(Member mem) throws Exception {
		MemberDAO.insertMember(mem);
	}

	@Override
	public boolean howmany(String numberofpeople) {
		// TODO Auto-generated method stub
		return false;
	}

	
	@Override
	public String[] MemberById() throws Exception {
		return MemberDAO.queryFriends();
	}

//	@Override
//	public String[] queryFriends(String name) throws Exception{
//		// TODO Auto-generated method stub
//		return null;
//	}

//	@Override
//	public String[] queryFriends(String name) throws Exception {
//		return MemberDAO.queryFriends(name);
//	}


}


