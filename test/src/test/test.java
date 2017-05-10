package test;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Request;

import com.xingyou.cn.Xy;
import com.youxing.cn.Yx;

/**
 * xingyou 作者 E-mail: xingyou823@126.com
 * 
 * @version 创建时间：2017年4月21日 下午5:04:52
 * 
 */
public class test {
	

	
	public static void getInfo1(){
		
		System.out.println("获取Info1");
	}
	public static String getInfo2(){
		
		return "获取Info2";
	}
	
	public static void main(String[] args) {
		
		System.out.println("name:"+Yx.getYouXingName());
		System.out.println("style:"+Yx.getYouXingStyle());
		System.out.println(Yx.getYouXingInfo("家明:","风骚闷骚Yx"));
		System.out.println("--------------------");
		System.out.println("name:"+Xy.getXingYouName());
		System.out.println("style:"+Xy.getXingYouStyle());
		System.out.println(Xy.getXingYouInfo("家明:","风骚闷骚Xy"));
		
		
		
		/*String states = "3-1";
		if (states.indexOf("3-") > -1) {
			System.out.println("true");
		} else {
			
			
			System.out.println("false");
			
			
			
		}*/

	}



}



