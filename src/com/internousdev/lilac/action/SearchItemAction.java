package com.internousdev.lilac.action;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.lilac.dao.MCategoryDAO;
import com.internousdev.lilac.dto.MCategoryDTO;
//import com.internousdev.lilac.dao.ProductInfoDAO;
//import com.internousdev.lilac.dto.ProductInfoDTO;
import com.internousdev.lilac.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;

//success→productList.jsp
//error→productList.jsp
public class SearchItemAction extends ActionSupport implements SessionAware{

	private String categoryId;///カテゴリーID
	private String keywords;//検索キーワード
	private List<MCategoryDTO> mCategoryDtoList = new ArrayList<MCategoryDTO>();//カテゴリーのリスト
	private List<String> keywordsErrorMessageList = new ArrayList<String>();//キーワードのエラーリスト
	private List<ProductInfoDTO> productInfoDtoList = new ArrayList<ProductInfoDTO>();//商品のリスト
	private Map<String, Object> session;

	public String execute() {

		String result = ERROR;

		InputChecker inputChecker = new InputChecker();

		//検索ワードに何も入っていない場合keywordsには何も入れない
		if(keywords == null) {
			keywords = "";
		}
		//検索ワードの文字チェックを行いMessageListにエラーメッセージを入れている
		//商品一覧画面でエラーメッセージを表示させないなら↓は不要
		keywordsErrorMessageList = inputChecker.doCheck("検索ワード", keywords, 0, 16, true, true, true, true, false,true,true);
		session.put("keywordsErrorMessageList", keywordsErrorMessageList);

		ProductInfoDAO productInfoDAO = new ProductInfoDAO();

		//対象の文字列.replace(置換される文字列, 置換する文字列)
		//全角スペースを半角スペースに置き換える
		//String型変数名.split("区切り文字", 分割後の要素数)
		//半角スペースで文字を区切っている
		switch (categoryId) {
			case "1":
				productInfoDtoList = productInfoDAO.getProductInfoListAll(keywords.replaceAll("　", " ").split(" "));
				result = SUCCESS;
				session.put("keywords", keywords);
				break;

			default:
				productInfoDtoList = productInfoDAO.getProductInfoListByKeywords(keywords.replaceAll("　", " ").split(" "), categoryId);
				result = SUCCESS;
				session.put("keywords", keywords);
				break;
		}

		//iterator→コレクション内の要素に順番にアクセスする
		//hasNext→繰り返し処理において、次の要素がある場合にtrueを返す
		//↓の場合、productDtoListにiteratorメソッドを実行し、次の要素がない場合、nullを入れている
		Iterator<ProductInfoDTO> iterator = productInfoDtoList.iterator();

		if(!(iterator.hasNext())) {
			productInfoDtoList = null;
		}

		//containsKeyは指定した要素があればtrueを返す
		//↓の場合mCategoryDtoListが存在しない場合sessionにmCategoryDtolistを作って入れている
		if(!session.containsKey("mCategoryDtoList")) {
			MCategoryDAO mCategoryDao = new MCategoryDAO();
			mCategoryDtoList = mCategoryDao.getMCategoryList();
			session.put("mCategoryDtoList", mCategoryDtoList);
		}

			return result;
	}

	public List<MCategoryDTO> getmCategoryDtoList() {
		return mCategoryDtoList;
	}
	public void setmCategoryDtoList(List<MCategoryDTO> mCategoryDtoList) {
		this.mCategoryDtoList = mCategoryDtoList;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public String getKeywords() {
		return keywords;
	}
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	public List<String> getKeywordsErrorMessageList() {
		return keywordsErrorMessageList;
	}
	public void setKeywordsErrorMessageList(List<String> keywordsErrorMessageList) {
		this.keywordsErrorMessageList = keywordsErrorMessageList;
	}
	public List<ProductInfoDTO> getProductInfoDtoList() {
		return productInfoDtoList;
	}
	public void setProductInfoDtoList(List<ProductInfoDTO> productInfoDtoList) {
		this.productInfoDtoList = productInfoDtoList;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
