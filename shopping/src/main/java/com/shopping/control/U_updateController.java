package com.shopping.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopping.member.MemberService;
import com.shopping.vo.UserVO;

public class U_updateController implements Controller {

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String id = req.getParameter("id");
		String passwd = req.getParameter("passwd");
		String name = req.getParameter("name");
		
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setName(name);
		vo.setPasswd(passwd);
		
		MemberService service = new MemberService();
		service.updateMember(vo);
		
		req.getRequestDispatcher("login.jsp").forward(req, res);
	}

}