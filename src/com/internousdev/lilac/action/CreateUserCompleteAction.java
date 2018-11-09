package com.internousdev.lilac.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.lilac.dao.CartInfoDAO;
import com.internousdev.lilac.dao.DestinationInfoDAO;
import com.internousdev.lilac.dao.UserInfoDAO;
import com.internousdev.lilac.dto.DestinationInfoDTO;
import com.internousdev.lilac.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;


public class CreateUserCompleteAction extends ActionSupport implements SessionAware{

	private String familyName;
	private String firstName;
	private String familyNameKana;
	private String firstNameKana;
	private String sex;
	private String email;
	private String loginId;
	private String password;
	private String categoryId;
	private Map<String, Object> session;
	private String cartflag;

	public String execute(){

		String result = ERROR;

		UserInfoDAO UserInfoDao = new UserInfoDAO();

		int count = UserInfoDao.createUser(familyName,firstName,familyNameKana,firstNameKana,sex,email,loginId,password);

		if(count > 0) {

			UserInfoDAO userInfoDao = new UserInfoDAO();
			if(userInfoDao.isExistsUserInfo(loginId, password)) {
				if(userInfoDao.login(loginId, password) >0 ) {
					UserInfoDTO userInfoDTO = userInfoDao.getUserInfo(loginId, password);
					session.put("loginId", userInfoDTO.getUserId());
					int cartCount=0;
					CartInfoDAO cartInfoDao = new CartInfoDAO();

					cartCount = cartInfoDao.linkToLoginId(String.valueOf(session.get("tempUserId")), loginId);
					if(session.containsKey("cartflag")){
						cartflag = session.get("cartflag").toString();
					}else{
						cartflag = "0";
					}

					if(cartflag.equals("1")&& cartCount > 0) {
						DestinationInfoDAO destinationInfoDao = new DestinationInfoDAO();
						try {
							List<DestinationInfoDTO> destinationInfoDtoList = new ArrayList<DestinationInfoDTO>();
							destinationInfoDtoList = destinationInfoDao.getDestinationInfo(loginId);
							Iterator<DestinationInfoDTO> iterator = destinationInfoDtoList.iterator();
							if(!(iterator.hasNext())) {
								destinationInfoDtoList = null;
							}
							session.put("destinationInfoDtoList", destinationInfoDtoList);
						}catch(SQLException e) {
							e.printStackTrace();
						}
						result = "cart";
					}else {
						result = SUCCESS;
					}
				}
				session.put("loginId", loginId);
				session.put("logined", 1);
			}

			UserInfoDao.userLogin(loginId);

			result = SUCCESS;
		}

	return result;
	}

	public String getFamilyName() {
		return familyName;
	}
	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getFamilyNameKana() {
		return familyNameKana;
	}
	public void setFamilyNameKana(String familyNameKana) {
		this.familyNameKana = familyNameKana;
	}
	public String getFirstNameKana() {
		return firstNameKana;
	}
	public void setFirstNameKana(String firstNameKana) {
		this.firstNameKana = firstNameKana;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public String getCartflag() {
		return cartflag;
	}
	public void setCartflag(String cartflag) {
		this.cartflag = cartflag;
	}
}
