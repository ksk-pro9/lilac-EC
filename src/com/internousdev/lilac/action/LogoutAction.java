package com.internousdev.lilac.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.lilac.dao.UserInfoDAO;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport implements SessionAware{


	/*	private String categoryId;*/
	private Map<String,Object>session;

	public String execute(){

		String result=ERROR;

		UserInfoDAO userInfoDAO=new UserInfoDAO();

		String loginId=String.valueOf(session.get("loginId"));
		boolean savedLoginId=boolean,valueOf(session.get("savedLoginId"));

		int count=userInfoDAO.logout(loginId);
		if(count>0){
			session.clear();
			session.put("savedLoginId"savedLoginId);
			session.put("loginId"LoginId);

			result=SUCCESS;
		}
			return result;

		}

		/*		public String getCategoryId() {
			return categoryId;
		}

		public void setCategoryId(String categoryId) {
			this.categoryId = categoryId;
		}*/

		public Map<String, Object> getSession() {
			return session;
		}

		public void setSession(Map<String, Object> session) {
			this.session = session;
		}



	}


