package com.shopping.Board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopping.control.Controller;
import com.shopping.vo.BoardVO;

public class ViewSingleBoard implements Controller
{

	@Override
	public void excute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		int bId=Integer.parseInt(req.getParameter("bId")) ;
		
		BoardService service=new BoardService();
		BoardVO vo= service.searchOne(bId);
		
		req.setAttribute("Singleboard", vo);
		
		//댓글추가
	
		
		//싱글보드 이동
		req.getRequestDispatcher(null).forward(req, res);
		
	}

}
