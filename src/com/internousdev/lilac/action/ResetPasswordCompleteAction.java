package com.internousdev.lilac.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.lilac.dao.UserInfoDAO;
import com.opensymphony.xwork2.ActionSupport;


public class ResetPasswordCompleteAction extends ActionSupport implements SessionAware{

	private String loginId;
	private String password;
	private Map<String,Object>session;
	private String cartflag;

	public String execute(){
		String result=ERROR;

		if(!(session.containsKey("mCategoryDtoList"))){
			result = "timeout";
			return result;
		}

		UserInfoDAO userInfoDAO=new UserInfoDAO();
		/*↓セッションからとってきたloginIdとnewpasswordをDBで上書きする*/
		int count=userInfoDAO.resetPassword(String.valueOf(session.get("loginId")),String.valueOf(session.get("newPassword")));

		if(count>0){
			result=SUCCESS;
		}
		return result;


	}


	public String getCartflag() {
		return cartflag;
	}

	public void setCartflag(String cartflag) {
		this.cartflag = cartflag;
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


}



