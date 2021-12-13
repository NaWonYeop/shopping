package com.shopping.dao;

import java.sql.SQLException;

import com.shopping.vo.MemberVO;

public class MemberDAO extends DAO {
	// 수정
	public void updateMember(MemberVO vo) {
		String sql = "update shop_member set passwd = ?, name = ? where id = ?";
		try {
			conn.prepareStatement(sql);
			psmt.setString(1, vo.getPasswd());
			psmt.setString(1, vo.getName());
			psmt.setString(3, vo.getId());
			
			int r = psmt.executeUpdate();
			System.out.println(r + "건 수정");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
	}
	
	
	// 삭제
	public void deleteMemver(String id) {
		String sql = "delete shop_member where id = ?";
		connect();
		
		try {
			conn.prepareStatement(sql);
			psmt.setString(1, id);
			int r = psmt.executeUpdate();
			System.out.println(r + "건 삭제");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
	}
	
	// 가입
	public void insertMember(MemberVO vo) {
		String sql = "insert into shop_member values(?, ?, ?)";
		connect();
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getId());
			psmt.setString(2, vo.getPasswd());
			psmt.setString(3, vo.getName());
			
			int r = psmt.executeUpdate();
			System.out.println(r + "건 입력");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
	}
}