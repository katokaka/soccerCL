package com.internousdev.soccerCL.action;

import java.util.ArrayList;
import java.util.List;

import com.internousdev.soccerCL.dao.GoStoreListDAO;
import com.internousdev.soccerCL.dto.StoreListDTO;
import com.internousdev.soccerCL.utill.ActionClass;

/**
 * GoStoreListAction 店舗一覧情報を取得するアクションクラス
 * @author Y.Yamazaki
 * @since 2015/05/01
 * @version 1.0
 */
public class GoStoreListAction extends ActionClass {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1738460950890139279L;
	/**
	 * @author Y.Yamazaki
	 * @since 2015/05/01
	 * storeList 店舗一覧情報
	 */
	private List<StoreListDTO> storeList = new ArrayList<StoreListDTO>();
	/**
	 * 店舗一覧をDBから取得し、店舗一覧画面に遷移させるメソッド
	 * @author Y.Yamazaki
	 * @since 2015/05/01
	 * @return result GoStoreListDAOのexecuteを実行しtrueを取得したらSUCCESSを返す
	 */
	public String execute() {
		GoStoreListDAO dao = new GoStoreListDAO();
		if(dao.SQLQuery()){
			storeList.addAll(dao.getStoreList());
			sessionMap.put("storeList",storeList );
			result=SUCCESS;
		}
		return result;
	}
	/**
	 * 店舗一覧情報取得メソッド
	 * @author Y.Yamazaki
	 * @since 2015/05/01
	 * @return streList 店舗一覧情報を返す
	 */
	public List<StoreListDTO> getStoreList(){
		return storeList;
	}
}
