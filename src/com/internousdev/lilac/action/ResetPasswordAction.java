package com.internousdev.lilac.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;



public class ResetPasswordAction extends ActionSupport implements SessionAware{

/*	private String categotyId;*/
	private Map<String,Object>session;


	public String execute(){

		String result=ERROR;

		session.remove("loginIdErrorMessageList");
		session.remove("passwordErrorMessageList");
		session.remove("passwordIncorrectErrorMessageList");
		session.remove("newPasswordErrorMessageList");
		session.remove("reConfirmationNewPasswordErrorMessageList");
		session.remove("newPasswordIncorrectErrorMessageList");

		result=SUCCESS;

		return result;

	}


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

