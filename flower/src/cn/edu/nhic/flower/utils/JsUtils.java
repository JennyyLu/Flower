package cn.edu.nhic.flower.utils;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;

public class JsUtils {
	
	public static void js_back(JspWriter out,String msg) throws IOException{
		out.println("<script>alert('"+msg+"');history.back();</script>");
	}
	
	public static void js_go(JspWriter out,String msg,String url) throws IOException{
		out.println("<script>alert('"+msg+"');location.href='"+url+"';</script>");
	}
	
	public static void show_result(JspWriter out,int result,String msg,String url) throws IOException{
		if (result > 0) {
			js_go(out, msg+"Success!", url);
		} else {
			js_back(out,msg+"Fail!");
		}
	}
	
}















