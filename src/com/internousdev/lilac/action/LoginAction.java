package com.internousdev.lilac.action;

import java.sql.SQLEsception;
import java.sql.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.lilac.dao.CartInfoDAO;
import com.internousdev.lilac.dao.DestinationInfoDAO;
import com.internousdev.lilac.dao.MCategoryDAO;
import com.internousdev.lilac.dao.UserInfoDAO;
import com.internousdev.lilac.dto.DestinationInfo;
import com.internousdev.lilac.dto.MCategoryDTO;
import com.internousdev.lilac.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{
	private String categoryId;
	private String loginId;
	private String password;
	private boolean savedLoginId;
	
	private List<MCategoryDTO> mCategoryDtoList = new ArrayList<MCategoryDTO>();
	private List<String> loginIdErrorMessageList = new ArrayList<String>();
	private List<Stirng> passwordErrorMessageList = new ArrayList<String>();
	
	private Map<String, Object> session;
	
	private String execute() {
		
		String result = ERROR;
		
		if(savedLoginId==true) {
			session.put("savedLoginId", true);
			session.put("loginId", loginId);
		}else {
			session.put("savedLoginId", false);
			session.remove("loginId", loginId);
		}
		
		InputChecker inputChecker = new InputChecker();

	}

}
