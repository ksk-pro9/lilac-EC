package com.internousdev.lilac.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.lilac.dao.MCategoryDAO;
import com.internousdev.lilac.dto.MCategoryDTO;
import com.internousdev.lilac.util.CommonUtility;
import com.opensymphony.xwork2.ActionSupport;

//success→home.jsp
public class HomeAction extends ActionSupport implements SessionAware{

	private String categoryId;
	private Map<String, Object> session;

	public String execute() {

		//ログインしていない状態かつ、仮のユーザーIDが発行されていない場合、
		//ランダムメソッドを使って仮のユーザーIDを発行してセッションに入れる
		if (!(session.containsKey("loginId")) && !(session.containsKey("tempUserId"))) {
			CommonUtility commonUtility = new CommonUtility();
			session.put("tempUserId", commonUtility.getRamdomValue());
		}

		//sessionにloginedが無ければ(ログインしていなければ)、loginedを0にセットする
		if(!session.containsKey("logined")) {
			session.put("logined", 0);
		}

		List<MCategoryDTO> mCategoryDtoList = new ArrayList<MCategoryDTO>();
		//sessionにmCategoryDtolistを作って入れている
		MCategoryDAO mCategoryDao = new MCategoryDAO();
		mCategoryDtoList = mCategoryDao.getMCategoryList();
		session.put("mCategoryDtoList", mCategoryDtoList);



		return SUCCESS;
	}

	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}