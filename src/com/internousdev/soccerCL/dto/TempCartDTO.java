package com.internousdev.soccerCL.dto;

import java.util.Map;

/**
 * カートの一時テーブルに関するデータを扱うDAOクラス
 * @author SHOTA KATO
 * @version 1.0
 * @since 1.0
 **/
public class TempCartDTO {
	
	/**
	 * セッション
	 */
	private Map<String,Object> session;


	/**
	 * 一時カートID
	 */
	private int cartTempId;
	
	/**
	 * 会員ID
	 */
	private int id;


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
	 * 試合名の画像
	 */
	private String matchImg;

	/**
	 * ホテル名の画像
	 */
	private String hotelImg;

	
	/**
	 * 飛行機名
	 */
	private String airport;

	/**
	 * 金額
	 */
	private int price;

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
	 * @return cartTempId
	 */
	public int getCartTempId() {
		return cartTempId;
	}

	/**
	 * @param cartTempId セットする cartTempId
	 */
	public void setCartTempId(int cartTempId) {
		this.cartTempId = cartTempId;
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

	/**
	 * @return matchImg
	 */
	public String getMatchImg() {
		return matchImg;
	}

	/**
	 * @param matchImg セットする matchImg
	 */
	public void setMatchImg(String matchImg) {
		this.matchImg = matchImg;
	}

	/**
	 * @return hotelImg
	 */
	public String getHotelImg() {
		return hotelImg;
	}

	/**
	 * @param hotelImg セットする hotelImg
	 */
	public void setHotelImg(String hotelImg) {
		this.hotelImg = hotelImg;
	}
}
