package com.servlet.init;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.code.kaptcha.Constants;
import com.bean.StudentBean;
import com.bean.UserBean;
import com.dao.IStudentDao;
import com.dao.IUserDao;
import com.dao.impl.StudentDao;
import com.dao.impl.UserDao;

public class LoginServlet extends HttpServlet {

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String account = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		String tyname = request.getParameter("type");
		String kapt = request.getParameter("kapt");
		
		if(account==null||account.equals("")){
			out.print("<script>alert('用户名不能为空!');history.go(-1);</script>");
			return;
		}
		String code = request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY).toString();
		if(!kapt.trim().equals(code)){
			out.print("<script>alert('验证码错误!');history.go(-1);</script>");
			return;
		}
		IUserDao dao = new UserDao();
		UserBean us = dao.login(account, pwd, tyname);
	
		IStudentDao sdao = new StudentDao();
		StudentBean stu = sdao.findByName(account);
		
		if(us!=null){
			request.getSession().setAttribute("user", us);
			request.getSession().setAttribute("stu", stu);
			response.sendRedirect("InitServlet");
		}else{
			out.print("<script>alert('登录失败!');history.go(-1);</script>");
		}
		
		out.flush();
		out.close();
	}

}
