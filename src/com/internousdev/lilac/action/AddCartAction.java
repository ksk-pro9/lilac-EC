package com.internousdev.lilac.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.lilac.dao.CartInfoDAO;
import com.internousdev.lilac.dto.CartInfoDTO;
import com.internousdev.lilac.util.CommonUtility;
import com.opensymphony.xwork2.ActionSupport;

public class AddCartAction extends ActionSupport implements SessionAware{

	private int productId;
	private String productName;
	private String productNameKana;
	private String imageFilePath;
	private String imageFileName;
	private int price;
	private String productCount;
	private String releaseCompany;
	private Date releaseDate;
	private String categoryId;

	private Map<String, Object> session;

	public String execute(){
		String result = ERROR;
		String userId = null;
		String tempUserId = null;

		//ログイン後、もしくはカート追加して再度CartAction実行した際cart.jspで
		//最初からエラーが表示されるので消しておく
		session.remove("checkListErrorMessageList");

		//loginIdもしくはtempUserIdがあるかないか判断
		//なければtempUserIdを作成、セッションにput
		if(!(session.containsKey("loginId"))&& !(session.containsKey("tempUserId"))){
			CommonUtility commonUtility = new CommonUtility();
			session.put("tempUserId", commonUtility.getRamdomValue());
		}

		//loginIdがある場合、
		//セッションにあるloginId,tempUserIdをuserId,tempUserIdにセット
		if(session.containsKey("loginId")){
			userId = String.valueOf(session.get("loginId"));
			tempUserId = String.valueOf(session.get("tempUserId"));
		}

		//splitの部分が謎!!  ([0]は配列の0番目を意味している)
		productCount = String.valueOf((productCount.split(" ,",0))[0]);

		//cart_infoテーブルにカート情報を入れる
		CartInfoDAO cartInfoDao = new CartInfoDAO();
		int count = cartInfoDao.regist(userId, tempUserId, productId, productCount, price);
		if(count > 0){
			result = SUCCESS;
		}

		//カート情報を入れた後、テーブルから格納されてた値をリストで取得して
		//セッションにput
		List<CartInfoDTO> cartInfoDtoList = new ArrayList<CartInfoDTO>();
		cartInfoDtoList = cartInfoDao.getCartInfoDtoList(userId);
		Iterator<CartInfoDTO>iterator = cartInfoDtoList.iterator();

		if(!(iterator.hasNext())){
			cartInfoDtoList = null;
		}
		session.put("cartInfoDtoList", cartInfoDtoList);

		//cart_infoテーブルでは合計金額はないので各商品（値段×個数）
		//の合わせた合計をセッションにput
		int totalPrice = Integer.parseInt(String.valueOf(cartInfoDao.getTotalPrice(userId)));
		session.put("totalPrice", totalPrice);
		return result;
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductNameKana() {
		return productNameKana;
	}

	public void setProductNameKana(String productNameKana) {
		this.productNameKana = productNameKana;
	}

	public String getImageFilePath() {
		return imageFilePath;
	}

	public void setImageFilePath(String imageFilePath) {
		this.imageFilePath = imageFilePath;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getProductCount() {
		return productCount;
	}

	public void setProductCount(String productCount) {
		this.productCount = productCount;
	}

	public String getReleaseCompany() {
		return releaseCompany;
	}

	public void setReleaseCompany(String releaseCompany) {
		this.releaseCompany = releaseCompany;
	}

	public Date getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(Date releaseDate) {
		this.releaseDate = releaseDate;
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
