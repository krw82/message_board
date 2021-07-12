package util;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Map;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

public class Cookiebox {
	
	private Map<String, Cookie> cookmap=
			new java.util.HashMap<String ,Cookie>();
	public Cookiebox(HttpServletRequest result) {
		Cookie [] cook=result.getCookies();
		if(cook !=null) {
			for(int i=0; i<cook.length; i++) {
				cookmap.put(cook[i].getName(), cook[i]);
			}
		}
	}
	 public static Cookie create(String name, String value) throws IOException {
		 
		 return new Cookie (name,URLEncoder.encode(value,"UTF-8"));	 
		 
	 }
	 public static Cookie create(String name, String value, String path, int maxage)throws IOException {
		 Cookie cookc =new Cookie(name,URLEncoder.encode(value,"UTF-8"));
		 cookc.setPath(path);
		 cookc.setMaxAge(maxage);
		 return cookc;
		 
	 }
	 public Cookie getCookie(String name) {
		 return cookmap.get(name);
	 }
	 public String getValue(String name) throws IOException {
		 Cookie c= cookmap.get(name);
		 if(c==null) {
			 return null;
		 }
		 return URLDecoder.decode(c.getValue(),"UTF-8");
	 }
	 
	 public boolean exists(String name) {
		 return cookmap.get(name) != null;
	 }
	
	
	
	
	
}
