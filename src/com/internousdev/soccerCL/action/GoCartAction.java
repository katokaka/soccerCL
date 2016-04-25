package com.internousdev.soccerCL.action;

import java.util.ArrayList;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;

/**
 * カートへ遷移するアクションクラス
 * @author S.KATO
 * @version 1.0
 * @since 1.0
 */

public class GoCartAction extends ActionSupport{

	/**
	 * シリアル番号
	 */
	private static final long serialVersionUID = -6000865939689940467L;

	/**
	 * セッション
	 */
	private Map<String,Object> session;

	/**
	 * 会員ID
	 */
	private int id;

	/**
	 * エラーメッセージ
	 */
	private String errorMessage;

	/**
	 * チケットID
	 */
	private int ticketId;

	/**
	 * 購入枚数
	 */
	private int lot;

	/**
	 * 試合名
	 */
	private String matchName;

	/**
	 * ホテル名
	 */
	private String hotel;

	/**
	 * 画像
	 */
	private String img;

	/**
	 * 飛行機名
	 */
	private String airport;

	/**
	 * 金額
	 */
	private int price;

	/**
	 * カートに移動するためのメソッド<br>
	 * 商品をtempcartに入れる。
	 * 商品のリストtempcartから取得します。<br>
	 * ↓は確認画面から購入完了に行く時に行う。
	 * 購入ボタンを押したら商品をcartのデータベースに入れ、tempcartから削除する。。
	 * 商品を
	 * </p>
	 * @param  
	 * @return SUCCESS/ERROR クレジットカードトークンが取得できればSUCCESS、できなければERROR
	 */
	public String execute(){
		//商品をtempcartに登録できたかを確認。
		RegistrationTempCartDAO dao = new RegistrationTempCartDAO();

		//id_keyがセッションされていなければ、sessionするメソッド
		if(session.containsKey("id_key")){
			id = (int) session.get("id_key");
		}else{
			//id_keyを入力するかどうか。
		}

		//matchName、hotel、airportからチケットIDを取得できたか。
		if(dao.getTicketId()!=0){
			ticketId = dao.getTicketId();
		}else{
			return ERROR;
		}

		//cart_tempのデータベースにid、matchName、hotel、airport、lotを登録できたか。
		if(!dao.select(id, ticketId, hotel, airport, lot)){
			return ERROR;
		}
		
		//cart_tempのデーターベースからmatchName、hotel、airport、lot、price取得できたか。
		if(dao.selectItem(id)){
			session.put( "List_key", dao.list);			
		}
		return SUCCESS;
	}

	/**
	 * @return session
	 */
	public Map<String, Object> getSession() {
		return session;
	}

	/**
	 * @param session セットする session
	 */
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	/**
	 * @return id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id セットする id
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return errorMessage
	 */
	public String getErrorMessage() {
		return errorMessage;
	}

	/**
	 * @param errorMessage セットする errorMessage
	 */
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	/**
	 * @return ticketId
	 */
	public int getTicketId() {
		return ticketId;
	}

	/**
	 * @param ticketId セットする ticketId
	 */
	public void setTicketId(int ticketId) {
		this.ticketId = ticketId;
	}

	/**
	 * @return lot
	 */
	public int getLot() {
		return lot;
	}

	/**
	 * @param lot セットする lot
	 */
	public void setLot(int lot) {
		this.lot = lot;
	}

	/**
	 * @return matchName
	 */
	public String getMatchName() {
		return matchName;
	}

	/**
	 * @param matchName セットする matchName
	 */
	public void setMatchName(String matchName) {
		this.matchName = matchName;
	}

	/**
	 * @return hotel
	 */
	public String getHotel() {
		return hotel;
	}

	/**
	 * @param hotel セットする hotel
	 */
	public void setHotel(String hotel) {
		this.hotel = hotel;
	}

	/**
	 * @return img
	 */
	public String getImg() {
		return img;
	}

	/**
	 * @param img セットする img
	 */
	public void setImg(String img) {
		this.img = img;
	}

	/**
	 * @return airport
	 */
	public String getAirport() {
		return airport;
	}

	/**
	 * @param airport セットする airport
	 */
	public void setAirport(String airport) {
		this.airport = airport;
	}

	/**
	 * @return price
	 */
	public int getPrice() {
		return price;
	}

	/**
	 * @param price セットする price
	 */
	public void setPrice(int price) {
		this.price = price;
	}



}
