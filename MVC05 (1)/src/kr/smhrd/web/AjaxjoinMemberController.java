package kr.smhrd.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.fabric.xmlrpc.base.Member;

import kr.smhrd.model.BoardDAOMybatis;
import kr.smhrd.model.BoardVO;
import kr.smhrd.model.UserVO;

public class AjaxjoinMemberController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String user_id = request.getParameter("user_id");
		String user_name = request.getParameter("user_name");
		String password = request.getParameter("password");

		UserVO vo = new UserVO(); // 객체 만들기

		vo.setUser_id(user_id);
		vo.setpassword(password);
		vo.setUser_name(user_name);

		String view = null;

		BoardDAOMybatis dao = new BoardDAOMybatis();

		int cnt = dao.joinMember(vo);

		PrintWriter out = response.getWriter();

		return null;
	}

}
