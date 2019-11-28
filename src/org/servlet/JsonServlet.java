package org.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.entity.Student;

import net.sf.json.JSONObject;

public class JsonServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String mobile = request.getParameter("mobile");
		PrintWriter out = response.getWriter();
		
		//测试前端传来的数据
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		System.out.println(name+"--"+age);
		
		Student stu1 = new Student("zs",22);
		Student stu2 = new Student("ls",33);
		Student stu3 = new Student("ww",44);
		
		JSONObject json = new JSONObject();
		json.put("stu1", stu1);
		json.put("stu2", stu2);
		json.put("stu3", stu3);
		
		out.print(json);//"msg":"true"返回json对象

		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
