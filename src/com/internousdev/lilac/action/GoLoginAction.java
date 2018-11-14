package com.internousdev.lilac.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.lilac.dao.MCategoryDAO;
import com.internousdev.lilac.dto.MCategoryDTO;
import com.opensymphony.xwork2.ActionSupport;

public class GoLoginAction extends ActionSupport implements SessionAware{

	private String categoryId;
	private  Map<String, Object> session;

	public String execute() {
		List<MCategoryDTO> mCategoryDtoList = new ArrayList<MCategoryDTO>();

		if(session == null){
			String result = "timeout";
			return result;
		}

		if(!session.containsKey("mCatcategoryList")) {
			MCategoryDAO mCategoryDao = new MCategoryDAO();
			mCategoryDtoList = mCategoryDao.getMCategoryList();
			session.put("mCategoryDtoList", mCategoryDtoList);
		}
		session.put("loginIdErrorMessageList", "");
		session.put("passwordErrorMessageList", "");
		return SUCCESS;
	}

	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public Map<String, Object> getSession(){
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


}
