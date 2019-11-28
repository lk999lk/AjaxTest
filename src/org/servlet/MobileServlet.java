package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MobileServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String mobile = request.getParameter("mobile");
		//假设此时数据库中只有一个号码：13689296214
		PrintWriter out = response.getWriter();
		if("13689296214".equals(mobile)){
//			return true;
//			out.write("true");//servlet以输出流的方式将信息返回给客户端
//			out.write("此号码已存在！");//$("#tip").load方式
			//如果客户端时getJSON(),则需要以json格式返回数据
			out.write("{\"msg\":\"true\"}");//"msg":"true"
		}else{
//			return false;
//			out.write("false");
//			out.write("注册成功！");//$("#tip").load方式
			out.write("{\"msg\":\"false\"}");
		}
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
