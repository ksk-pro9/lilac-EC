package com.internousdev.lilac.action;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.lilac.dao.CartInfoDAO;
import com.internousdev.lilac.dto.CartInfoDTO;
import com.internousdev.lilac.dto.MCategoryDTO;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteCartAction extends ActionSupport implements SessionAware{
	private Collection<String> checkList;

	private List<MCategoryDTO> mCategoryDtoList = new ArrayList<MCategoryDTO>();

	private Map<String, Object> session;
	public String execute() {
		String result = ERROR;
		CartInfoDAO cartInfoDAO = new CartInfoDAO();
		int count = 0;
		List<String> checkListErrorMessageList = new ArrayList<String>();

		if(session == null){
			result = "timeout";
			return result;
		}

		//cart.jspでチェックされた購入IDでcart_infoテーブルから削除
		//その数が0ならエラーメッセージをセッションにput
		for(String id:checkList) {
			System.out.println(id);
			count += cartInfoDAO.delete(id);
		}
		if(count <= 0) {
			checkListErrorMessageList.add("チェックされていません。");
			session.put("checkListErrorMessageList", checkListErrorMessageList);
			return ERROR;
		}else {
			String userId = null;
			List<CartInfoDTO> cartInfoDtoList = new ArrayList<CartInfoDTO>();
			if(session.containsKey("loginId")) {
				userId = String.valueOf(session.get("loginId"));
			}else if (session.containsKey("tempUserId")) {
				userId = String.valueOf(session.get("tempUserId"));
			}

			//削除後のカート情報を取得、セッションにput
			cartInfoDtoList = cartInfoDAO.getCartInfoDtoList(userId);
			Iterator<CartInfoDTO> iterator = cartInfoDtoList.iterator();
			if(!(iterator.hasNext())) {
				cartInfoDtoList = null;
			}
			session.put("cartInfoDtoList", cartInfoDtoList);

			//cart_infoテーブルでは合計金額はないので各商品（値段×個数）
			//の合わせた合計をセッションにput
			int totalPrice = Integer.parseInt(String.valueOf(cartInfoDAO.getTotalPrice(userId)));
			session.put("totalPrice", totalPrice);

			result = SUCCESS;
		}
		return result;
	}
	public Collection<String> getCheckList() {
		return checkList;
	}
	public void setCheckList(Collection<String> checkList) {
		this.checkList = checkList;
	}
	public List<MCategoryDTO> getmCategoryDtoList() {
		return mCategoryDtoList;
	}
	public void setmCategoryDtoList(List<MCategoryDTO> mCategoryDtoList) {
		this.mCategoryDtoList = mCategoryDtoList;
	}
	public Map<String, Object> getSession() {
		return session;
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
