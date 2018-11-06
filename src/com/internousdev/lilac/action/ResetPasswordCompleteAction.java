package com.internousdev.lilac.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;
//import com.internousdev.lilac.dao.UserInfoDAO;


public class ResetPasswordCompleteAction extends ActionSupport implements SessionAware{

/*	private String categoryId;*/
	private String loginId;
	private String password;
	private Map<String,Object>session;

	public String execute(){
		String result=ERROR;

		int count=userInfoDAO.resetPassword(String.valueOf(session.get("loginId")),String.valueOf(session.get("newPassword")){

			if(count>0){
				result=SUCCESS;
			}else{
				result=ERROR;
			}return result;

			}
		}
	}



