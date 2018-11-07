package com.internousdev.lilac.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;



public class ResetPasswordAction extends ActionSupport implements SessionAware{

	/*	private String categotyId;*/
	/*	いらない気がするからコメント化*/
	private Map<String,Object>session;


	public String execute(){

		String result=ERROR;

		/*↓他のページから遷移してきたときにエラーメッセージを表示させないためにリムーブ*/

		session.remove("loginIdErrorMessageList");
		session.remove("passwordErrorMessageList");
		session.remove("passwordIncorrectErrorMessageList");
		session.remove("newPasswordErrorMessageList");
		session.remove("reConfirmationNewPasswordErrorMessageList");
		session.remove("newPasswordIncorrectErrorMessageList");

		result=SUCCESS;

		return result;

	}

	/*いらない気がするからコメント化*/
	/*	public String getCategotyId() {
		return categotyId;
	}


	public void setCategotyId(String categotyId) {
		this.categotyId = categotyId;
	}*/


	public Map<String, Object> getSession() {
		return session;
	}


	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}

