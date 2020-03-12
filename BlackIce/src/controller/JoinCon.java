package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import front.ICommand;
import model.MemberDAO;
import model.MemberDTO;

public class JoinCon implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("tel");

		MemberDTO dto = new MemberDTO(name, email, pw, tel);
		MemberDAO dao = MemberDAO.getDAO();
		dao.join(dto);

		moveURL = "Mainpage.jsp";

		return moveURL;
	}
}
