package Controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Logic.L02_Member_join;

@WebServlet("/CommandProcessorMap")
public class Commandprop extends HttpServlet{
	
	HashMap commandProcsessorMap;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		FileInputStream fis = null;
		commandProcsessorMap = new HashMap<>();
		Properties prop = new Properties();
		try {
			fis= new FileInputStream
					("C:\\LIM\\javasrc\\JSP10_Mvc\\WebContent\\WEB-INF\\command.prop");
			prop.load(fis);
		}catch(Exception e1) {
			if(fis!=null) {
				try {
					fis.close();
				}catch(IOException e2) {
					
				}
			}
		}
		Iterator iter = prop.keySet().iterator();
		
		while(iter.hasNext()) {
			String cmd = (String)iter.next();
			String commandProcessorName = prop.getProperty(cmd);
			try {
				Class processorClass = Class.forName(commandProcessorName);
				Object processorInstance = processorClass.newInstance();
				
				commandProcsessorMap.put(cmd, processorInstance);
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String cmd = req.getParameter("cmd");
		
		C03_CommandProcessor processor = (C03_CommandProcessor) commandProcsessorMap.get(cmd);
		
		String view = null;
		if(cmd==null){
			processor = new Logic.L01_Member_null();
			
		}/*
		else if(cmd.equals("member_join")) {
			processor=new Logic.L02_Member_join();
		}*/
		view = processor.process(req, resp);
		RequestDispatcher dis = req.getRequestDispatcher(view);
		dis.forward(req, resp);
	
	}
}
