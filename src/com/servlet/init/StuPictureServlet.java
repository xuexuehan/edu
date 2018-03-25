package com.servlet.init;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import com.bean.SubjectBean;
import com.bean.UserBean;
import com.dao.IScoreDao;
import com.dao.impl.ScoreDao;

public class StuPictureServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
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
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		  	IScoreDao scdao=new ScoreDao();
	        UserBean us = (UserBean) request.getSession().getAttribute("user");
	        ArrayList<SubjectBean> array = (ArrayList<SubjectBean>) scdao.listClass(us.getId());
	        System.out.println("s"+array);
	        response.setContentType("text/html; charset=utf-8");
	        JSONArray json=JSONArray.fromObject(array);
	        System.out.println(json.toString());
	        PrintWriter out = response.getWriter();  
	        out.println(json);  
	        out.flush();  
	        out.close();   
	}

}
