package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import front.ICommand;
import model.MemberDAO;
import model.MemberDTO;

public class LoginCon implements ICommand{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String moveURL = null;
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");

		MemberDTO dto = new MemberDTO(email, pw);
		MemberDAO dao = MemberDAO.getDAO();
		MemberDTO info = dao.login(dto);

		if (info != null) {
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
		}
		moveURL = "index.html";
		
		
		return moveURL;
	}
}
