package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.UserBean;

public class LoginFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		HttpSession session = request.getSession();
		UserBean user = (UserBean) session.getAttribute("user");
		String rootpath = request.getContextPath();
		String uripath = request.getRequestURI();
		String name = request.getServletPath();
		
		System.out.println("name:---->"+name);
		String path = uripath.substring(rootpath.length());
		System.out.println(path);
		if(path.equals("/InitLogin")||path.equals("/LoginServlet")||path.startsWith("/admin")||path.startsWith("/kinde")||path.equals("/kaptcha")||path.startsWith("/front")){
			chain.doFilter(request, response);
			return;
		}else{
			if(user!=null){
				chain.doFilter(request, response);
				return;
			}else{
				response.sendRedirect("InitLogin");
			}
		}
		
		
		
		
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
