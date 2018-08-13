package org.study.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.study.dao.ApplyDao;
import org.study.model.Application;
import org.study.model.User;

@WebServlet("/schedule")
public class ScheduleController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
		throws IOException, ServletException {
		request.getRequestDispatcher("/WEB-INF/views/Schedule.jsp").forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
		throws IOException, ServletException {
		String what = request.getParameter("what");
		String desc = request.getParameter("desc");

				
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		Application application = new Application(user.getId());

		
		application.setPlan(what);
		application.setPlandesc(desc);
		
		
		//System.out.println(application);
		
		ApplyDao dao = new ApplyDao();
		int result = dao.submitApplication(application);
		if (result == 1) {
			response.sendRedirect(request.getContextPath() + "/profile?msg=success");
		} 
	}
}