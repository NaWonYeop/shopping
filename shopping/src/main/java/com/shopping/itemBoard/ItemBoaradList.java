package com.shopping.itemBoard;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopping.control.Controller;
import com.shopping.vo.ItemBoardVO;


public class ItemBoaradList implements Controller
{

	
	@Override
	public void excute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		ItemBoardService service=new ItemBoardService();
		List<ItemBoardVO> list=service.searchAll();
				
		
	}

}