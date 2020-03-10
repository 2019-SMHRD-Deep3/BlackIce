package front;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.JoinCon;
import controller.LoginCon;

@WebServlet("/FrontController")
public class FrontController extends HttpServlet {

	private HashMap<String, ICommand> map = new HashMap<String, ICommand>();

	private void putData() {
		map.put("JoinService.do", new JoinCon());
		map.put("LoginService.do", new LoginCon());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String resultURL = requestURI.substring(contextPath.length() + 1);

		request.setCharacterEncoding("EUC-KR");
		String moveURL = null;
		putData();
		ICommand iCommand = map.get(resultURL);
		
		moveURL = iCommand.execute(request, response);
		response.sendRedirect(moveURL);
	}

}
