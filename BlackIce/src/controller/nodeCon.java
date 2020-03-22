package controller;

import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.google.gson.Gson;

import front.ICommand;
import model.nodeDAO;
import model.nodeDTO;

public class nodeCon implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		float lat1 = Float.parseFloat(request.getParameter("lat1"));
		float lon1 = Float.parseFloat(request.getParameter("lon1"));
		float lat2 = Float.parseFloat(request.getParameter("lat2"));
		float lon2 = Float.parseFloat(request.getParameter("lon2"));

		String[] str = null;
		String[] str1 = null;
		
		
		if (lat1 == lat2 || lon1 == lon2) {

		} else {
			
			if ((float) lat1 <= (float) lat2) {
				float num = lat1;
				lat1 = lat2;
				lat2 = num;
			}
			if ((float) lon1 <= (float) lon2) {
				float num = lon1;
				lon1 = lon2;
				lon2 = num;
			}

			try {

				Document doc = Jsoup.connect("http://openapi.its.go.kr/api/NTrafficInfo?key=1584353822235&ReqType=2&"
						+ "MinX=" + lon2 + "&MaxX=" + lon1 + "&" + "MinY=" + lat2 + "&MaxY=" + lat1).get();
				

				
				str = doc.select("startnodeid").text().split(" ");
				str1 = doc.select("endnodeid").text().split(" ");
				
			
				
				System.out.println(str[0]);
				System.out.println(str1[0]);
				// System.out.println(str[doc.select("startnodeid").text().split(" ").length-1]);
				// System.out.println(str1[doc.select("endnodeid").text().split(" ").length-1]);
				

			} catch (IOException e) {

				e.printStackTrace();
			}


		}

		
		String moveURL = null;
		
		int f_node = Integer.parseInt(str[0]);
		int t_node = Integer.parseInt(str1[0]);
		if (lat1 == lat2 || lon1 == lon2) {
			f_node = Integer.parseInt("3420003801");
			t_node = Integer.parseInt("3420066500");
		}
		nodeDAO dao = nodeDAO.getDAO();
		ArrayList<nodeDTO> list = new ArrayList<nodeDTO>();
		
		nodeDTO dto = new nodeDTO(f_node, t_node);
		list = dao.nodeSelect(dto);
		
	
		Gson gson = new Gson();
		moveURL = gson.toJson(list);
		
		return moveURL;
	}
}
