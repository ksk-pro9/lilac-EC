package com.internousdev.lilac.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.lilac.dao.UserInfoDAO;
import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport implements SessionAware{

	/*↓いらない、たぶん*/
	/*	private String categoryId;*/
	private Map<String,Object>session;

	public String execute(){

		String result=ERROR;

		UserInfoDAO userInfoDAO=new UserInfoDAO();

		String loginId=String.valueOf(session.get("loginId"));
		/*↓セッションsavedLoginIdの値をtrueかfaulseで判定する*/
		boolean savedLoginId=Boolean.valueOf(String.valueOf(session.get("savedLoginId")));
		/*↓DBに接続してloginedを0にして返す*/
		int count=userInfoDAO.logout(loginId);
		/*		↓1ならセッションクリアして、条件「ログイン認証の際、ID保存チェックが有の場合は、
		ログインIDとID保持機能チェックを保持してください。」のためにセッションに入れる*/
		/*※login.jspのチェックボックスあたりのメソッドで実行される*/
		if(count>0){
			session.clear();
			session.put("savedLoginId",savedLoginId);
			session.put("loginId",loginId);

			session.put("logined",0);

			result=SUCCESS;
		}
		return result;

	}
	/*↓いらない、たぶん*/
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


