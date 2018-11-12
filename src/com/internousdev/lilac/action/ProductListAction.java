package com.internousdev.lilac.action;

import java.util.ArrayList;
import java.util.List;

import com.internousdev.lilac.dao.ProductInfoDAO;
import com.internousdev.lilac.dto.ProductInfoDTO;
import com.opensymphony.xwork2.ActionSupport;


public class ProductListAction extends ActionSupport{

	//jspでは<s:iterator value="productInfoDtoList">で取り出しているため、以下のフィールドは定義しなくてもよい。
	/*private String imageFilePath;
	private String imageFileName;
	private String productName;
	private String productNameKana;
	private int price;
	//private String categoryId;
	//private String keywords;
	 */

	//private List<MCategoryDTO> mCategoryDtoList = new ArrayList<MCategoryDTO>();
	private List<ProductInfoDTO> productInfoDtoList = new ArrayList<ProductInfoDTO>();

	//private Map<String, Object> session;

	public String execute() {
		String result = ERROR;

		ProductInfoDAO productInfoDAO = new ProductInfoDAO();
		//商品の商品情報を全て取得します。
		productInfoDtoList = productInfoDAO.getProductInfoList();

		/*if(!session.containsKey("mCategoryList")) {
			MCategoryDAO mCategoryDAO = new MCategoryDAO();
			mCategoryDtoList = mCategoryDAO.getMCategoryList();
			session.put("mCategoryDtoList", mCategoryDtoList);
		}*/

		result = SUCCESS;
		return result;
	}

	public List<ProductInfoDTO> getProductInfoDtoList() {
		return productInfoDtoList;
	}
	public void setProductInfoDtoList(List<ProductInfoDTO> productInfoDtoList) {
		this.productInfoDtoList = productInfoDtoList;
	}
	/*public List<MCategoryDTO> getmCategoryDtoList() {
		return mCategoryDtoList;
	}
	public void setmCategoryDtoList(List<MCategoryDTO> mCategoryDtoList) {
		this.mCategoryDtoList = mCategoryDtoList;
	}*/
	/*public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}*/
	/*public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}*/
	/*public String getImageFilePath() {
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}*/
}
