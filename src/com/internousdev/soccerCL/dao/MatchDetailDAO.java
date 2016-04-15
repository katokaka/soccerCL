package jp.co.internous.gpscoffee.dao;

import java.util.Map;

public class MatchDetailDAO {
	
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
	 * 飛行機名
	 */
	private String airport;

	/**
	 * 金額
	 */
	private int price;
	
	/**
	 * 試合名からホテル名を取得するためのメソッド
	 * 商品のリストを取得します。<br>
	 * </p>
	 * @return ret ID番号が取得できればtrue/取得できなければfalse
	 */
	public boolean selectHotel(String matchName){
		
		
	}
	
	
}
