package com.internousdev.orgecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.orgecsite.dao.ItemDataDAO;
import com.internousdev.orgecsite.dto.ItemDataDTO;
import com.opensymphony.xwork2.ActionSupport;

public class HomeAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;

	private ItemDataDAO itemDataDAO = new ItemDataDAO();
	public ArrayList<ItemDataDTO> itemList = new ArrayList<ItemDataDTO>();

	public String execute() throws SQLException {
		String result = "login";	/* if文の条件にかからなければloginを返す。 */

		/* ログイン状態か否かのチェック */
		if(session.containsKey("login_user_id")) {

			setItemList(itemDataDAO.getItemDataInfo());
			/* itemList を buyItem.jsp で表示したい。*/
			session.put("itemList", itemList);

			result = SUCCESS;
		}

		return result;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}


	public ArrayList<ItemDataDTO> getItemList() {
		return itemList;
	}
	public void setItemList(ArrayList<ItemDataDTO> itemList) {
		this.itemList = itemList;
	}

}
